#include "types.h"
#include "user.h"
#include "pstat.h"

int
main(void)
{
    int pid1, pid2;
    struct pstat ps;
    int i;

    printf(1, "Lottery Scheduler Test\n");
    printf(1, "======================\n");

    // Set random seed
    srand(42);

    // Fork first child with 1 ticket
    pid1 = fork();
    if (pid1 == 0) {
        // Child 1: CPU-intensive work
        for (i = 0; i < 100000; i++) {
            // Busy work
            int x = i * i;
            x = x + 1;
        }
        exit();
    }

    // Fork second child with 4 tickets
    pid2 = fork();
    if (pid2 == 0) {
        // Child 2: CPU-intensive work
        for (i = 0; i < 100000; i++) {
            // Busy work
            int x = i * i;
            x = x + 1;
        }
        exit();
    }

    // Parent: set tickets and monitor
    if (settickets(pid1, 1) < 0) {
        printf(1, "Failed to set tickets for pid1\n");
    }
    if (settickets(pid2, 4) < 0) {
        printf(1, "Failed to set tickets for pid2\n");
    }

    printf(1, "Set pid %d to 1 ticket, pid %d to 4 tickets\n", pid1, pid2);
    printf(1, "Both children doing CPU-intensive work...\n");

    // Let them run for a bit
    sleep(50);

    // Check results
    if (getpinfo(&ps) == 0) {
        printf(1, "\nResults after 50 ticks:\n");
        printf(1, "PID\tTICKETS\tRUNTICKS\tBOOSTS\n");
        for (i = 0; i < NPROC; i++) {
            if (ps.inuse[i] && (ps.pid[i] == pid1 || ps.pid[i] == pid2)) {
                printf(1, "%d\t%d\t%d\t\t%d\n", 
                       ps.pid[i], ps.tickets[i], ps.runticks[i], ps.boostsleft[i]);
            }
        }
    }

    // Wait for children
    wait();
    wait();

    // Test sleep boost functionality
    printf(1, "\nTesting sleep boost functionality...\n");
    pid1 = fork();
    if (pid1 == 0) {
        printf(1, "Child sleeping for 10 ticks...\n");
        sleep(10);
        printf(1, "Child woke up\n");
        exit();
    }

    // Let child sleep
    sleep(5);
    
    // Check boost status
    if (getpinfo(&ps) == 0) {
        for (i = 0; i < NPROC; i++) {
            if (ps.inuse[i] && ps.pid[i] == pid1) {
                printf(1, "Sleeping child pid %d should have boosts after waking\n", pid1);
                break;
            }
        }
    }

    wait();
    printf(1, "Test completed!\n");
    exit();
}
