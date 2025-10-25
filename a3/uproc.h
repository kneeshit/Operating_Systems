#ifndef UPROC_H
#define UPROC_H
#include "types.h"
#include <stdint.h>


struct uproc {
    int pid;
    int ppid;
    char state[16];
    int syscall_count;
    uint sz;
    char name[16];
    // lottery scheduler fields
    int tickets;
    int runticks;
    int boostsleft;
};

#endif