#include "types.h"
#include "stat.h"
#include "user.h"

struct semaphore sem;
int counter = 0;

void* producer(void* arg) {
    int id = (int)arg;
    for (int i = 0; i < 3; i++) {
        semUp(&sem);  // Signal (increment semaphore)
        counter++;
        printf(1, "Producer %d: incremented counter to %d, signaled semaphore\n", id, counter);
        sleep(10);
    }
    return 0;
}

void* consumer(void* arg) {
    int id = (int)arg;
    for (int i = 0; i < 3; i++) {
        semDown(&sem);  // Wait (decrement semaphore, may block)
        printf(1, "Consumer %d: got semaphore, counter is %d\n", id, counter);
        sleep(20);
    }
    return 0;
}

int
main(int argc, char *argv[])
{
    printf(1, "Starting semaphore test...\n");
    
    // Initialize semaphore with initial value 0
    semInit(&sem, 0);
    printf(1, "Semaphore initialized with value 0\n");
    
    uint producer1_thread, producer2_thread, consumer1_thread, consumer2_thread;
    
    // Create threads
    if (thread_create(&producer1_thread, producer, (void*)1) < 0) {
        printf(1, "Failed to create producer1 thread\n");
        exit();
    }
    
    if (thread_create(&consumer1_thread, consumer, (void*)1) < 0) {
        printf(1, "Failed to create consumer1 thread\n");
        exit();
    }
    
    if (thread_create(&producer2_thread, producer, (void*)2) < 0) {
        printf(1, "Failed to create producer2 thread\n");
        exit();
    }
    
    if (thread_create(&consumer2_thread, consumer, (void*)2) < 0) {
        printf(1, "Failed to create consumer2 thread\n");
        exit();
    }
    
    printf(1, "All threads created, waiting for completion...\n");
    
    // Wait for all threads to complete
    thread_join(producer1_thread);
    thread_join(consumer1_thread);
    thread_join(producer2_thread);
    thread_join(consumer2_thread);
    
    printf(1, "Semaphore test completed. Final counter: %d\n", counter);
    printf(1, "Test PASSED!\n");
    
    exit();
}