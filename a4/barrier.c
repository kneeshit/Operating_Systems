/*----------xv6 sync lab----------*/
#include "types.h"
#include "arm.h"
#include "spinlock.h"
#include "defs.h"
#include "barrier.h"

//define any variables needed here
struct {
    struct spinlock lock;
    int n;              // Total number of processes that need to arrive
    int count;          // Number of processes that have arrived so far
    int round;          // Round number to handle reuse (though problem says single use)
} barrier;

int
barrier_init(int n)
{
  if (n <= 0) {
    return -1; // Invalid barrier count
  }
  
  initlock(&barrier.lock, "barrier");
  acquire(&barrier.lock);
  
  barrier.n = n;
  barrier.count = 0;
  barrier.round = 0;
  
  release(&barrier.lock);
  return 0;
}

int
barrier_check(void)
{
  acquire(&barrier.lock);
  
  int round = barrier.round;
  barrier.count++;
  
  if (barrier.count < barrier.n) {
    // First N-1 processes: sleep until all arrive
    // Sleep on the barrier structure itself as the channel
    // Note: sleep() will release the lock and reacquire it when woken
    while (barrier.count < barrier.n && barrier.round == round) {
      sleep(&barrier, &barrier.lock);
    }
  } else {
    // Nth process: wake up all waiting processes
    barrier.round++; // Increment round for potential reuse
    wakeup(&barrier);
  }
  
  release(&barrier.lock);
  return 0;
}

/*----------xv6 sync lock end----------*/