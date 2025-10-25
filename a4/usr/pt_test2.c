#include "user.h"
#include "param.h"
#include "types.h"
#include "memlayout.h"

#define N_PAGES 16
#define PAGE_SIZE 4096

char *testname = "";

void
err(char *why)
{
    printf(1, "ondemand_test: %s failed: %s, pid=%d\n", testname, why, getpid());
    exit();
}

void
touch_page(char *addr, int write)
{
    if (write) {
        *addr = 42; // force write access
    } else {
        volatile char val = *addr; // force read access
        (void)val;
    }
}

void
read_trigger_test(char *base)
{
    printf(1, "read_trigger_test starting\n");
    testname = "read_trigger_test";

    for (int i = 0; i < N_PAGES; i++) {
        char *va = base + i * PAGE_SIZE;
        touch_page(va, 0);
        printf(1, "  Read page %d at %p\n", i, va);
    }

    printf(1, "read_trigger_test: OK\n");
}

void
write_trigger_test(char *base)
{
    printf(1, "write_trigger_test starting\n");
    testname = "write_trigger_test";

    for (int i = 0; i < N_PAGES; i++) {
        char *va = base + i * PAGE_SIZE;
        touch_page(va, 1);
        printf(1, "  Wrote page %d at %p\n", i, va);
    }

    printf(1, "write_trigger_test: OK\n");
}

void
fork_isolation_test(char *base)
{
    printf(1, "fork_isolation_test starting\n");
    testname = "fork_isolation_test";

    int pid = fork();
    if (pid < 0)
        err("fork failed");

    if (pid == 0) {
        for (int i = 0; i < N_PAGES; i++) {
            *(base + i * PAGE_SIZE) = i;
        }
        printf(1, "  Child modified its own pages\n");
        exit();
    } else {
        wait();
        for (int i = 0; i < N_PAGES; i++) {
            if (*(base + i * PAGE_SIZE) != 42) {
                err("parent page value changed after child write");
            }
        }
        printf(1, "  Parent verified isolation OK\n");
    }

    printf(1, "fork_isolation_test: OK\n");
}

void
ondemand_sbrk_test()
{
    printf(1, "ondemand_sbrk_test starting\n");
    testname = "ondemand_sbrk_test";

    char *base = sbrk(N_PAGES * PAGE_SIZE);
    if (base == (char *)-1)
        err("sbrk failed");

    printf(1, "  Heap expanded by %d pages (%d bytes)\n", N_PAGES, N_PAGES * PAGE_SIZE);
    printf(1, "  Base address: %p\n", base);
    

    read_trigger_test(base);
    write_trigger_test(base);
    fork_isolation_test(base);

    printf(1, "ondemand_sbrk_test: OK\n");
}

int
main(int argc, char *argv[])
{
    printf(1, "\n===== On-Demand Paging Test (ARM xv6) =====\n\n");

    ondemand_sbrk_test();

    printf(1, "\nondemand_test: all tests succeeded\n");
    exit();
}
