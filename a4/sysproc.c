#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"
#include "uproc.h"
#include "types.h"
#include <stdint.h>
#include "pstat.h"


uint* walkpgdir(uint *pgdir, const void *va, int alloc);
// Return the PTE for a given user virtual address (for current process)
uint sys_pgpte(void) {
    uint va;
    if (argint(0, (int*)&va) < 0)
        return 0;
    uint *pte = walkpgdir((uint*)proc->pgdir, (void*)va, 0);
    if (!pte)
        return 0;
    return *pte;
}

// Prototype after includes so typedefs are available
pte_t* walkpgdir(pde_t *pgdir, const void *va, int alloc);


int
sys_getprocs(void)
{
    uint64_t buf;
    int max;

    if (argaddr(0, &buf) < 0 || argint(1, &max) < 0)
        return -1;

    return getprocs(buf, max);
}


int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{
    exit();
    return 0;  // not reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }

    return addr;
}

int sys_sleep(void)
{
    int n;

    if(argint(0, &n) < 0 || n < 0) {
        return -1;
    }

    acquire(&tickslock);
    // Set absolute wakeup tick and sleep without waking every tick unnecessarily
    proc->sleep_until = ticks + (uint)n;

    // Sleep on &ticks while holding tickslock; wakeup1 will decide when to wake
    sleep(&ticks, &tickslock);

    // After waking from sleep, tickslock has been re-acquired by sleep()
    release(&tickslock);

    return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}

// --- New syscalls for lottery scheduler ---
int sys_settickets(void)
{
    int pid, n;
    if (argint(0, &pid) < 0 || argint(1, &n) < 0) return -1;
    if (n <= 0) return -1;

    return sched_settickets(pid, n);
}

int sys_srand(void)
{
    int seed;
    if (argint(0, &seed) < 0) return -1;
    extern uint rseed;
    rseed = (uint)seed;
    return 0;
}

int sys_getpinfo(void)
{
    struct pstat *ps;
    if (argptr(0, (char**)&ps, sizeof(*ps)) < 0) return -1;

    return sched_getpinfo(ps);
}

////////////// New syscalls from xv6 //////////////////
int sys_thread_create(void){
    uint *thread;
    void *(*start_routine)(void*);
    void *arg;
    
    if (argptr(0, (char**)&thread, sizeof(*thread)) < 0 ||
        argptr(1, (char**)&start_routine, sizeof(start_routine)) < 0 ||
        argptr(2, (char**)&arg, sizeof(arg)) < 0) {
        return -1;
    }
    
    return thread_create(thread, start_routine, arg);
}

int sys_thread_exit(void){
    thread_exit();
    return 0; // not reached for threads
}

int sys_thread_join(void){
    uint thread;
    
    if (argint(0, (int*)&thread) < 0) {
        return -1;
    }
    
    return thread_join(thread);
}

int sys_barrier_init(void)
{
  int n;
  if (argint(0, &n) < 0) return -1;
  return barrier_init(n);
}

int sys_barrier_check(void)
{
  return barrier_check();
}

int sys_waitpid(void)
{
  return -1;
}

int sys_sleepChan(void) {
  int chan;
  if (argint(0, &chan) < 0) {
    return -1;
  }
  return sleepChan(chan);
}

int sys_getChannel(void) {
  return getChannel();
}

int sys_sigChan(void) {
  int chan;
  if (argint(0, &chan) < 0) {
    return -1;
  }
  return sigChan(chan);
}

int sys_sigOneChan(void) {
  int chan;
  if (argint(0, &chan) < 0) {
    return -1;
  }
  return sigOneChan(chan);
}
///////////// End of new syscalls from xv6 /////////////
