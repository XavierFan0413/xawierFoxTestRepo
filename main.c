#include <stdio.h>

int main(int argc, char **argv)
{
    /* variable declarations at the top */
    int i;

    /* simple output */
    printf("Hello, Xiangwei! This is your C playground.\n");

    /* example for loop to avoid unused variable 'i' */
    for (i = 0; i < argc; i++) {
        printf("Argument %d: %s\n", i, argv[i]);
    }

    return 0;
}
