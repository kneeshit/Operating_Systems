#include "types.h"
#include "user.h"

int shared_variable = 0;

void* simple_thread(void* arg) {
    int* value = (int*)arg;
    printf(1, "Thread started with arg: %d\n", *value);
    shared_variable = *value + 100;
    printf(1, "Thread setting shared_variable to: %d\n", shared_variable);
    thread_exit();
    return 0;
}

int main() {
    printf(1, "Testing simple threading...\n");
    
    int test_arg = 42;
    uint thread_id;
    
    printf(1, "Creating thread...\n");
    if (thread_create(&thread_id, simple_thread, (void*)&test_arg) < 0) {
        printf(1, "ERROR: thread_create failed\n");
        exit();
    }
    
    printf(1, "Thread created with id: %d\n", thread_id);
    printf(1, "Waiting for thread to complete...\n");
    
    if (thread_join(thread_id) < 0) {
        printf(1, "ERROR: thread_join failed\n");
        exit();
    }
    
    printf(1, "Thread completed. shared_variable = %d\n", shared_variable);
    printf(1, "Expected: 142, Actual: %d\n", shared_variable);
    
    if (shared_variable == 142) {
        printf(1, "SUCCESS: Threading test passed!\n");
    } else {
        printf(1, "FAILURE: Threading test failed!\n");
    }
    
    exit();
}