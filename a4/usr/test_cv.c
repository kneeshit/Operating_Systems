#include "types.h"
#include "user.h"

struct lock l;
struct condvar cv;
int ready = 0;

void* producer(void* arg) {
    acquireLock(&l);
    printf(1, "Producer: setting ready = 1\n");
    ready = 1;
    broadcast(&cv);  // Wake up waiting consumer
    releaseLock(&l);
    thread_exit();
    return 0;
}

void* consumer(void* arg) {
    acquireLock(&l);
    while (!ready) {
        printf(1, "Consumer: waiting for ready...\n");
        condWait(&cv, &l);
    }
    printf(1, "Consumer: ready is now %d\n", ready);
    releaseLock(&l);
    thread_exit();
    return 0;
}

int main() {
    printf(1, "Testing condition variables...\n");
    
    initiateLock(&l);
    initiateCondVar(&cv);
    
    uint tid1, tid2;
    
    // Create consumer first (will wait)
    thread_create(&tid1, consumer, 0);
    
    // Small delay then create producer
    sleep(1);
    thread_create(&tid2, producer, 0);
    
    // Wait for both threads
    thread_join(tid1);
    thread_join(tid2);
    
    printf(1, "Condition variable test completed!\n");
    exit();
}