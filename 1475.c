#include <stdio.h>

int main()
{
    int number, index;
    int count = 1;
    int array[10] = {
        1,
    };
    scanf("%d", &number);
    do
    {
        index = number % 10;
        if (index == 6 || index == 9)
        {
            if (array[6] > 0)
            {
                --array[6];
            }
            else if (array[9] > 0)
            {
                --array[9];
            }
            else
            {
                for (int i = 0; i < 10; ++i)
                {
                    array[i] += 1;
                }
                --array[index];
                ++count;
            }
        }
        else
        {
            if (array[index] > 0)
            {
                --array[index];
            }
            else
            {
                for (int i = 0; i < 10; ++i)
                {
                    array[i] += 1;
                }
                --array[index];
                ++count;
            }
        }

    } while ((number = number / 10) != 0);
    printf("%d\n", count);
    return 0;
}