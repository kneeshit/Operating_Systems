#include "types.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "arm.h"
#include "proc.h"
#include "spinlock.h"
#include "uproc.h"
#include "pstat.h"
#include "mmu.h"

#define PGSIZE PTE_SZ
#define PGROUNDUP(sz) align_up(sz, PGSIZE)
                
pde_t* walkpgdir(pde_t*, const void*, int);

// Random generator and lottery support
#define RAND_MAX 0x7fffffff
uint rseed = 0;

uint rand() {
    return rseed = (rseed * 1103515245 + 12345) & RAND_MAX;
}


// ----------------------------------------------------------------------
// Process table (kept private to this file)
// ----------------------------------------------------------------------
static struct {
    struct spinlock lock;
    struct proc proc[NPROC];
} ptable;

static char *states[] = {
  [UNUSED]    "unused",
  [SLEEPING]  "sleep ",
  [RUNNABLE]  "runble",
  [RUNNING]   "run   ",
  [ZOMBIE]    "zombie"
};

static struct proc *initproc;
struct proc *proc;

int nextpid = 1;
extern void forkret(void);
extern void trapret(void);

static void wakeup1(void *chan);

// ----------------------------------------------------------------------
// Initialization
// ----------------------------------------------------------------------
void
pinit(void)
{
    initlock(&ptable.lock, "ptable");
}

// ----------------------------------------------------------------------
// Allocate a new process slot and kernel stack; prepare context/trapframe
// ----------------------------------------------------------------------
static struct proc*
allocproc(void)
{
    struct proc *p;
    char *sp;

    acquire(&ptable.lock);

    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->state == UNUSED) {
            goto found;
        }
    }

    release(&ptable.lock);
    return 0;

found:
    p->state = EMBRYO;
    p->pid   = nextpid++;

    p->syscall_count = 0;       // initialize syscall counter

    // Initialize lottery/sleep fields
    p->tickets = 1;             // default base tickets
    p->runticks = 0;
    p->boostsleft = 0;
    p->sleep_until = 0;
    p->sleep_start = 0;

    release(&ptable.lock);

    // Allocate kernel stack.
    if ((p->kstack = alloc_page()) == 0) {
        p->state = UNUSED;
        return 0;
    }

    sp = p->kstack + KSTACKSIZE;

    // Leave room for trap frame.
    sp -= sizeof(*p->tf);
    p->tf = (struct trapframe*)sp;

    // Set up new context to start at forkret, which returns to trapret.
    sp -= 4;
    *(uint*)sp = (uint)trapret;

    sp -= 4;
    *(uint*)sp = (uint)p->kstack + KSTACKSIZE;

    sp -= sizeof(*p->context);
    p->context = (struct context*)sp;
    memset(p->context, 0, sizeof(*p->context));

    // Skip the prologue push {fp, lr} in forkret on ARM.
    p->context->lr = (uint)forkret + 4;

    return p;
}

// ----------------------------------------------------------------------
// getprocs: copy a compact table of processes to user space
//   - ubuf: user virtual address of the first element of an array of
//           struct uproc (defined in uproc.h).
//   - returns number of entries copied, or -1 on error.
// Note: We intentionally keep this helper here (inside proc.c) so it can
//       access ptable without exposing it.
// ----------------------------------------------------------------------
int
getprocs(uint64_t ubuf, int max)
{
    struct proc *p;
    struct uproc u;
    int count = 0;

    acquire(&ptable.lock);

    for(p = ptable.proc; p < &ptable.proc[NPROC] && count < max; p++) {

        if(p->state != UNUSED) {
            u.pid = p->pid;
            u.ppid = p->parent ? p->parent->pid : 0;
            safestrcpy(u.state, states[p->state], sizeof(u.state));
            u.syscall_count = p->syscall_count;
            u.sz = p->sz;
            safestrcpy(u.name, p->name, sizeof(u.name));
            // populate lottery scheduler fields
            u.tickets = p->tickets;
            u.runticks = p->runticks;
            u.boostsleft = p->boostsleft;

            // Use the *calling process’s* pagetable (myproc)
            if(copyout(proc->pgdir,
                       ubuf + count * sizeof(u),
                       (char*)&u,
                       sizeof(u)) < 0) {
                release(&ptable.lock);
                return -1;
            }
            count++;
        }
    }
    release(&ptable.lock);
    return count;
}

// ----------------------------------------------------------------------
// Panic helper used by initcode if something goes wrong
// Exported helpers for syscalls to avoid exposing ptable outside this file
int sched_settickets(int pid, int n)
{
    if (n <= 0) return -1;
    acquire(&ptable.lock);
    struct proc *p;
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->state != UNUSED && p->pid == pid) {
            p->tickets = n;
            release(&ptable.lock);
            return 0;
        }
    }
    release(&ptable.lock);
    return -1;
}

int sched_getpinfo(struct pstat *ps)
{
    if (ps == 0) return -1;
    acquire(&ptable.lock);
    struct proc *p;
    int i = 0;
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++, i++) {
        ps->inuse[i] = (p->state != UNUSED);
        ps->pid[i] = p->pid;
        ps->tickets[i] = p->tickets;
        ps->runticks[i] = p->runticks;
        ps->boostsleft[i] = p->boostsleft;
    }
    release(&ptable.lock);
    return 0;
}

// ----------------------------------------------------------------------
void
error_init(void)
{
    panic("failed to craft first process\n");
}

// ----------------------------------------------------------------------
// Create the very first user process (initcode.S)
// ----------------------------------------------------------------------
void
userinit(void)
{
    struct proc *p;
    extern char _binary_initcode_start[], _binary_initcode_size[];

    p = allocproc();
    initproc = p;
    p->tickets = 1; // first process has 1 ticket

    if ((p->pgdir = kpt_alloc()) == NULL) {
        panic("userinit: out of memory?");
    }

    inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
    p->sz = PTE_SZ;

    memset(p->tf, 0, sizeof(*p->tf));
    p->tf->r14_svc = (uint)error_init;
    p->tf->spsr    = spsr_usr();
    p->tf->sp_usr  = PTE_SZ;   // user stack
    p->tf->lr_usr  = 0;
    p->tf->pc      = 0;        // entry of initcode.S

    safestrcpy(p->name, "initcode", sizeof(p->name));
    p->cwd = namei("/");

    p->state = RUNNABLE;
}

// ----------------------------------------------------------------------
// Grow/shrink current process memory
// ----------------------------------------------------------------------
int
growproc(int n)
{
    uint sz = proc->sz;

    if (n > 0) {
        if ((sz = allocuvm(proc->pgdir, sz, sz + n)) == 0)
            return -1;
    } else if (n < 0) {
        if ((sz = deallocuvm(proc->pgdir, sz, sz + n)) == 0)
            return -1;
    }

    proc->sz = sz;
    switchuvm(proc);
    return 0;
}

// ----------------------------------------------------------------------
// fork: create a child process
// ----------------------------------------------------------------------
int
fork(void)
{
    int i, pid;
    struct proc *np;

    // Allocate process.
    if ((np = allocproc()) == 0)
        return -1;

    // Copy process state from parent.
    if ((np->pgdir = copyuvm(proc->pgdir, proc->sz)) == 0) {
        free_page(np->kstack);
        np->kstack = 0;
        np->state = UNUSED;
        return -1;
    }

    np->sz     = proc->sz;
    np->parent = proc;
    *np->tf    = *proc->tf;

    // inherit tickets from parent (base tickets only)
    np->tickets = proc->tickets;
    np->boostsleft = 0; // do not inherit boosts

    // Child returns 0 from fork.
    np->tf->r0 = 0;

    for (i = 0; i < NOFILE; i++) {
        if (proc->ofile[i])
            np->ofile[i] = filedup(proc->ofile[i]);
    }

    np->cwd = idup(proc->cwd);

    pid = np->pid;
    np->state = RUNNABLE;
    safestrcpy(np->name, proc->name, sizeof(np->name));
    return pid;
}

// ----------------------------------------------------------------------
// Exit current process (does not return)
// ----------------------------------------------------------------------
void
exit(void)
{
    struct proc *p;
    int fd;

    if (proc == initproc)
        panic("init exiting");

    // Close all files.
    for (fd = 0; fd < NOFILE; fd++) {
        if (proc->ofile[fd]) {
            fileclose(proc->ofile[fd]);
            proc->ofile[fd] = 0;
        }
    }

    iput(proc->cwd);
    proc->cwd = 0;

    acquire(&ptable.lock);

    // Wake parent.
    wakeup1(proc->parent);

    // Reparent orphaned children to init.
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->parent == proc) {
            p->parent = initproc;
            if (p->state == ZOMBIE)
                wakeup1(initproc);
        }
    }

    // Become a zombie and schedule out.
    proc->state = ZOMBIE;
    sched();
    panic("zombie exit");
}

// ----------------------------------------------------------------------
// wait: wait for a child to exit
// ----------------------------------------------------------------------
int
wait(void)
{
    struct proc *p;
    int havekids, pid;

    acquire(&ptable.lock);
    for (;;) {
        havekids = 0;

        for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
            if (p->parent != proc)
                continue;
            havekids = 1;
            if (p->state == ZOMBIE) {
                // Reap.
                pid = p->pid;
                free_page(p->kstack);
                p->kstack = 0;
                freevm(p->pgdir);
                p->state = UNUSED;
// returns a pointer to the lottery winner among RUNNABLE processes

                p->pid = 0;
                p->parent = 0;
                p->name[0] = 0;
                p->killed = 0;
                release(&ptable.lock);
                return pid;
            }
        }

        // No children or we were killed.
        if (!havekids || proc->killed) {
            release(&ptable.lock);
            return -1;
        }

        // Sleep waiting for children; recheck conditions after wake.
        sleep(proc, &ptable.lock);
    }
}

// ----------------------------------------------------------------------
// Simple round-robin scheduler
// ----------------------------------------------------------------------
// returns a pointer to the lottery winner among RUNNABLE processes
static struct proc *
hold_lottery_locked(int total_tickets)
{
    if (total_tickets <= 0) {
        cprintf("hold_lottery called with no runnable processes\n");
        return 0;
    }
    uint r = rand();
    uint winning = r % (uint)total_tickets; // 0..total_tickets-1

    // Walk ptable and pick the process whose ticket range covers 'winning'
    int cumulative = 0;
    struct proc *pp;
    for (pp = ptable.proc; pp < &ptable.proc[NPROC]; pp++) {
        if (pp->state != RUNNABLE) continue;
        int eff = pp->tickets > 0 ? pp->tickets : 0;
        if (pp->boostsleft > 0) eff *= 2;
        cumulative += eff;
        if (winning < (uint)cumulative) {
            return pp;
        }
    }
    return 0;
}

void
scheduler(void)
{
    for (;;) {
        sti();  // enable interrupts

        acquire(&ptable.lock);

        // Compute total effective tickets among RUNNABLE processes
        int total = 0;
        struct proc *p;
        for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
            if (p->state != RUNNABLE) continue;
            int eff = p->tickets > 0 ? p->tickets : 0;
            if (p->boostsleft > 0) eff *= 2;
            total += eff;
        }

        if (total > 0) {
            struct proc *w = hold_lottery_locked(total);
            if (w != 0) {
                // run the winner for one tick
                proc = w;
                switchuvm(w);
                w->state = RUNNING;
                swtch(&cpu->scheduler, proc->context);
                // on return, a tick has passed or process yielded/slept/exited
                // account for runtick if it ran this tick
                w->runticks++;

                // Consume one boost opportunity for each process that participated
                // i.e., all RUNNABLE at the time of the lottery (losers remain RUNNABLE),
                // and also the winner even if it changed state during its timeslice.
                int winner_still_runnable = (w->state == RUNNABLE);
                struct proc *q;
                for (q = ptable.proc; q < &ptable.proc[NPROC]; q++) {
                    if (q->state == RUNNABLE && q->boostsleft > 0) {
                        q->boostsleft--;
                    }
                }
                if (!winner_still_runnable && w->boostsleft > 0) {
                    w->boostsleft--;
                }

                proc = 0;
            }
        }

        release(&ptable.lock);
    }
}

// ----------------------------------------------------------------------
// Enter scheduler; must hold only ptable.lock and have set proc->state
// ----------------------------------------------------------------------
void
sched(void)
{
    int intena;

    if (!holding(&ptable.lock))       panic("sched ptable.lock");
    if (cpu->ncli != 1)               panic("sched locks");
    if (proc->state == RUNNING)       panic("sched running");
    if (int_enabled())                panic("sched interruptible");

    intena = cpu->intena;
    swtch(&proc->context, cpu->scheduler);
    cpu->intena = intena;
}

// ----------------------------------------------------------------------
// yield: give up CPU for one scheduler round
// ----------------------------------------------------------------------
void
yield(void)
{
    acquire(&ptable.lock);
    proc->state = RUNNABLE;
    sched();
    release(&ptable.lock);
}

// ----------------------------------------------------------------------
// First run after fork: finish init that must happen in process context
// ----------------------------------------------------------------------
void
forkret(void)
{
    static int first = 1;

    // Still holding ptable.lock from scheduler.
    release(&ptable.lock);

    if (first) {
        first = 0;
        initlog();
    }
    // return to trapret via context->lr set in allocproc
}

// ----------------------------------------------------------------------
// sleep: atomically release lk, sleep on chan, then reacquire lk
// ----------------------------------------------------------------------
void
sleep(void *chan, struct spinlock *lk)
{
    if (proc == 0)      panic("sleep");
    if (lk == 0)        panic("sleep without lk");

    if (lk != &ptable.lock) {
        acquire(&ptable.lock);
        release(lk);
    }

    proc->chan  = chan;
    proc->state = SLEEPING;
    // record sleep start for accounting if sleeping on ticks (sys_sleep)
    if (chan == &ticks) {
        proc->sleep_start = ticks;
    }
    sched();

    // when we wake from sys_sleep, boostsleft should be incremented by actual sleep duration
    if (chan == &ticks) {
        uint slept = ticks - proc->sleep_start;
        // add compensation for slept ticks; accumulate with remaining boosts
        proc->boostsleft += slept;
    }

    proc->chan = 0;

    if (lk != &ptable.lock) {
        release(&ptable.lock);
        acquire(lk);
    }
}

// ----------------------------------------------------------------------
// Wake all procs sleeping on chan (ptable.lock must be held)
// ----------------------------------------------------------------------
static void
wakeup1(void *chan)
{
    struct proc *p;
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->state != SLEEPING || p->chan != chan) continue;
        if (chan == &ticks) {
            // Only wake if its requested sleep duration has expired
            if (ticks >= p->sleep_until) {
                p->state = RUNNABLE;
            }
        } else {
            p->state = RUNNABLE;
        }
    }
}

// ----------------------------------------------------------------------
// Public wakeup wrapper
// ----------------------------------------------------------------------
void
wakeup(void *chan)
{
    acquire(&ptable.lock);
    wakeup1(chan);
    release(&ptable.lock);
}

// ----------------------------------------------------------------------
// kill: set killed flag, wake if sleeping
// ----------------------------------------------------------------------
int
kill(int pid)
{
    struct proc *p;

    acquire(&ptable.lock);
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->pid == pid) {
            p->killed = 1;
            if (p->state == SLEEPING)
                p->state = RUNNABLE;
            release(&ptable.lock);
            return 0;
        }
    }
    release(&ptable.lock);
    return -1;
}

// ----------------------------------------------------------------------
// procdump: print brief table for ^P
// ----------------------------------------------------------------------
void
procdump(void)
{
    static char *states[] = {
        [UNUSED]   "unused",
        [EMBRYO]   "embryo",
        [SLEEPING] "sleep ",
        [RUNNABLE] "runble",
        [RUNNING]  "run   ",
        [ZOMBIE]   "zombie",
    };

    struct proc *p;
    char *state;

    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->state == UNUSED)
            continue;

        if (p->state >= 0 && p->state < NELEM(states) && states[p->state])
            state = states[p->state];
        else
            state = "???";

        cprintf("%d %s %s\n", p->pid, state, p->name);
    }

    show_callstk("procdump: \n");
}


// In proc.c, replace the old function with this one

int
sys_dumppagetable(void)
{
  struct proc *curproc = proc;
  pde_t *pgdir = curproc->pgdir;
  uint sz = curproc->sz;
  uint num_pages = PGROUNDUP(sz) / PGSIZE;
  pte_t *pte;
  uint i;

  cprintf("--- Page Table Dump for PID %d ---\n", curproc->pid);
  cprintf("Virtual Address Range: 0x0 to 0x%x (%d pages)\n", sz, num_pages);

  // Print first 10 pages
  cprintf("\n--- First 10 Pages ---\n");
  for (i = 0; i < num_pages && i < 10; i++) {
    uint va = i * PGSIZE;
    pte = walkpgdir(pgdir, (void *)va, 0);

    // CORRECT VALIDITY CHECK: A user page is valid if its type is PTE_TYPE.
    if (pte && ((*pte & PE_TYPES) == PTE_TYPE)) {
      uint pa = PTE_ADDR(*pte);
      cprintf("idx: %d, va: 0x%x, pa: 0x%x, pte: 0x%x, flags: ", i, va, pa, *pte);

      // CORRECT PERMISSION CHECK: Extract the Access Permission bits.
      uint ap = PTE_AP(*pte);

      // Check if User has any access (Read or Read/Write).
      if (ap == AP_KU || ap == AP_KUR) {
        cprintf("U ");
      }

      // Check if User has Write access.
      if (ap == AP_KU) {
        cprintf("W ");
      }

      cprintf("\n");
    } else {
      cprintf("idx: %d, va: 0x%x, Not Mapped\n", i, va);
    }
  }

  // Print last 10 pages
  if (num_pages > 10) {
    cprintf("\n--- Last 10 Pages ---\n");
    uint start = (num_pages > 20) ? (num_pages - 10) : 10;
    for (i = start; i < num_pages; i++) {
      uint va = i * PGSIZE;
      pte = walkpgdir(pgdir, (void *)va, 0);

      if (pte && ((*pte & PE_TYPES) == PTE_TYPE)) {
        uint pa = PTE_ADDR(*pte);
        cprintf("idx: %d, va: 0x%x, pa: 0x%x, pte: 0x%x, flags: ", i, va, pa, *pte);
        
        uint ap = PTE_AP(*pte);

        if (ap == AP_KU || ap == AP_KUR) {
          cprintf("U ");
        }

        if (ap == AP_KU) {
          cprintf("W ");
        }

        cprintf("\n");
      } else {
        cprintf("idx: %d, va: 0x%x, Not Mapped\n", i, va);
      }
    }
  }

  cprintf("--- End of Dump ---\n");
  return 0;
}