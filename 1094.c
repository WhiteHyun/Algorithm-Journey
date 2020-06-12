#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
    int stick;
    int count = 0;
    scanf("%d", &stick);
    for (int i = 1; i <= 64; i <<= 1)
    {
        if ((stick & i) != 0)
            ++count;
    }
    printf("%d\n", count);
    return 0;
}