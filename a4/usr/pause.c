#include "types.h"
#include "stat.h"
#include "user.h"
#include <math.h>

int digs(int n) {
    int count = 0;
    while(n != 0) {
        n /= 10;
        count++;
    }
    return count;
}


int main(int argc, char *argv[]) {    
    // Check if the user provided a time argument
    if(argc < 2) {
        printf(1, "Error: provide time <seconds>\n");
        exit();
    }

    // Convert the input argument (string) to an integer
    int sec = atoi(argv[1]);


    // Validate that the number of seconds is positive
    if(sec <= 0) {
        printf(1, "Error: invalid number of seconds\n");
        exit();
    }
  
    // Loop from 0 to sec-1, printing a counter each second
    for(int i = 0; i < sec; i++) {
       
        printf(1, "%d", i + 1);

        // Sleep for 1 second (10 ticks = ~1 second)
        sleep(10);
        int digits = digs(i + 1);
        for(int j = 0; j < digits; j++) {
            printf(2, "\b");
        }
    }

    exit();
}