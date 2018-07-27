#include <stdio.h>
#include <stdlib.h>

int main()
{
    char *x ;
    char *y ;
    char *z ;
    char *w ;

    x =  malloc(1);
    y =  malloc(10);
    z =  malloc(16);
    w =  malloc(32);

    printf("%d %d %d %d",&x,&y,&z,&w);
}
