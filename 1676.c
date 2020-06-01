#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
    int num, count = 0, two = 0, five = 0;
    scanf("%d", &num);
    for (int i = 2; i <= num; i *= 2)
    {
        two += num / i;
    }
    for (int i = 5; i <= num; i *= 5)
    {
        five += num / i;
    }

    printf("%d\n", two > five ? five : two);
    return 0;
}