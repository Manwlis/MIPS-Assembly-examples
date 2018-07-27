#include <stdio.h>
#include <stdlib.h>

int global;

int main()
{

    int *y;
    y = malloc(1);

    printf("%#x %#x %#x ",main,&global,&y);
    synarthsh();
    return 0;
}

void synarthsh()
{
    int x;
    printf("%#x",&x);
}
