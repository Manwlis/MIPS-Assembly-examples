#include <stdio.h>
#include <stdlib.h>

int step(void)
{
    static int m = -1;
    int n = -1;
    printf("m is %d, n is %d. ", ++m, ++n);
    return m;
}
void main(void)
{
    int A[10], i; /* A = array of 10 ints, i = scalar int variable */
    int * p; /* p is a scalar variable that points to an int */
    for (i = 0; i < 10; i++)
    {
        A[i] = step();
        printf("Element A[%d] = %d is stored in address: 0x%x\n", i, A[i], &A[i]);
    }
    printf("decimal: %d %d %d %d\n",A,A+1,(int)A+1,&A[1]);
    printf("hexadecimal:%#x %#x %#x %#x\n",A,A+1,(int)A+1,&A[1]);
    printf("%d %d",sizeof(A),sizeof(A[0]));
}

