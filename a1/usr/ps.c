#include "types.h"
#include "stat.h"
#include "user.h"
#include "uproc.h"

int main(int argc, char *argv[])
{
    struct uproc table[64];   // storage for processes
    int n, i;

    n = getprocs(table, 64);

    printf(1,"PID\tPPID\tSTATE\tSYSCALLS\tNAME\n");
    for (i = 0; i < n; i++) {
        printf(1,"%d\t%d\t%s\t%d\t%s\n",
            table[i].pid,
            table[i].ppid,
            table[i].state,        
            table[i].syscall_count,
            table[i].name);
    }
    exit();
}
