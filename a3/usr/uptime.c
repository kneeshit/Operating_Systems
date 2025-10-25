#include "types.h"
#include "stat.h"
#include "user.h"

int main(void) {
    // Call the uptime() system call to get the number of clock ticks since the system started.
    int t = uptime();          

    // Convert ticks into seconds (10 ticks = 1 second).
    int sec = t / 10;

    // Get the remainder ticks (to show as fractional part in milliseconds).
    int ms  = (t % 10);
    // Print uptime in seconds with a fractional tick part.
    printf(1, "Uptime: %d.%d seconds\n", sec, ms);

    // Exit the program 
    exit();
}