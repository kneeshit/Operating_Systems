#include "types.h"
#include "user.h"
#include "pstat.h"

int
main(void)
{
  struct pstat ps;
  if (getpinfo(&ps) < 0) {
    printf(1, "getpinfo failed\n");
    exit();
  }
  for (int i = 0; i < NPROC; i++) {
    if (ps.inuse[i]) {
      printf(1, "pid=%d tickets=%d boostsleft=%d runticks=%d\n",
             ps.pid[i], ps.tickets[i], ps.boostsleft[i], ps.runticks[i]);
    }
  }
  exit();
}

