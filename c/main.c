#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    int *ptr; /* declare all variables at the top */

    printf("Hello! This is my C playground.\n");
    printf("This is a simple C program.\n");
    printf("This program demonstrates basic memory allocation.\n");

    /* allocate memory for one int */
    ptr = (int *)malloc(sizeof(int));

    if (ptr == NULL) {
        printf("Memory allocation failed!\n");
        return 1;
    }

    *ptr = 42; /* assign a value to the allocated memory */

    printf("Value pointed to by ptr: %d\n", *ptr);
    printf("Address stored in ptr: %p\n", (void *)ptr);

    /* free the memory */
    free(ptr);

    return 0;
}
