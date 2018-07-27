#include <stdio.h>
#include <stdlib.h>

struct a
{
    char X;
    int C;
    char Y;
};

struct b
{
    char X;
    char Y;
    int C;
};

int main()
{
    struct a a;
    struct b b;

    printf("%d %d",sizeof(a),sizeof(b));

}
