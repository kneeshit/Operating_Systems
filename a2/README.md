## Plan and current status

I’ve implemented most of your “Boosted Lottery Scheduler” assignment requirements and got the kernel building successfully.

Key changes:

   Lottery scheduler with boosts:
   Added fields to struct proc: tickets, runticks, boostsleft, sleep_until, sleep_start
   Implemented lottery-based scheduling in proc.c:scheduler(), selecting a RUNNABLE winner each tick
   Boost logic:
   When a proc sleeps on ticks, we record sleep_start; on wake we add slept ticks to boostsleft
   Each lottery consumption decrements boostsleft for all RUNNABLE participants, including the winner (even if it became non-RUNNABLE during its timeslice)
   Improved sleep/wakeup:
   sys_sleep() sets proc->sleep_until = ticks + n and sleeps on &ticks
   wakeup1() checks ticks >= p->sleep_until before waking sleeping processes on &ticks, preventing false wakeups
   Randomness:
   Added rand() and rseed to proc.c as specified
   New syscalls:
   settickets(pid, n): set base tickets of a process
   srand(seed): set kernel rseed
   getpinfo(struct pstat*): return inuse, pid, tickets, runticks, boostsleft for all table slots
   Added kernel helpers sched_settickets and sched_getpinfo in proc.c for safe access to ptable from sysproc.c
   Wired syscall numbers and stubs (syscall.h/c, usr/usys.S, usr/user.h)
Build: make now completes successfully.

# What I changed (high level)
proc.h:
Added lottery and sleep tracking fields to struct proc
proc.c:
Added rand(), hold_lottery_locked()
Adjusted allocproc(), fork() to init and inherit tickets (no boost inheritance)
Implemented lottery in scheduler()
sleep(): record sleep_start for &ticks; on wake add slept ticks to boostsleft
wakeup1(): gate wakeups for &ticks until ticks >= sleep_until
Added exported helpers sched_settickets() and sched_getpinfo()
sysproc.c:
Rewrote sys_sleep() to use sleep_until logic without false wakeups
Added sys_settickets(), sys_srand(), sys_getpinfo() delegating to kernel helpers
syscall.h/c and userland:
Added syscall numbers for settickets/srand/getpinfo
Declared prototypes in usr/user.h and added usys.S entries
pstat.h created in kernel and included from user (usr/pstat.h wrapper)
Added sample user tool usr/pinfo.c and included it in usr/Makefile for testing

# Notes and assumptions to validate
Boost consumption policy: I decremented boostsleft for all RUNNABLE participants each lottery. This matches the examples’ intent that a process gets a fixed number of “favourable lotteries” after waking, independent of whether it wins those rounds. If you’d prefer only decrementing the winner’s boostsleft, we can adjust.
Sleep accounting: I accumulate boosts if a process sleeps again before consuming all boostsleft (Example 2 behavior)
First process tickets: init gets 1 ticket
Children inherit base tickets from parent, not boostsleft
No scheduling decisions on wake/arrival beyond marking RUNNABLE; selection occurs on next timer tick

# Next steps I can take
Add a tiny user test to validate behaviour:
Two procs with 1 vs 4 tickets; measure runticks ratio with getpinfo (after a while) to approximate 1:4
Test boosted behaviour by sleep()ing one proc and checking boostsleft decreases across lotteries
Refine any policy differences (e.g., whether to decrement boosts of non-winners)

# How to see the new APIs from user space
Prototypes in user.h:
settickets(int pid, int n_tickets)
void srand(uint seed)
int getpinfo(struct pstat*)
Example (usr/pinfo.c was added as a simple viewer):
Build and run, then from shell: pinfo
It lists pid, tickets, boostsleft, runticks for all procs
