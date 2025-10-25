// In usr/pt_test.c
#include "types.h"
#include "stat.h"
#include "user.h"

int
main(void)
{
  printf(1, "pt_test: Starting page table test...\n");

  // Allocate some memory to ensure there are pages to see
  char *buffer = malloc(4096 * 5); // Allocate 5 pages
  if (buffer == 0) {
    printf(2, "pt_test: malloc failed\n");
    exit();
  }
  
  // Touch the memory to make sure it's mapped (important for Part 2)
  buffer[0] = 'a';
  buffer[4096] = 'b';

  printf(1, "pt_test: Calling dumppagetable()...\n");
  dumppagetable();
  printf(1, "pt_test: System call finished.\n");
  
  free(buffer);
  exit();
}