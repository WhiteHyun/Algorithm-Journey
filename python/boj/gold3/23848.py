#
#  23848번: 등비수열의 합
#  https://www.acmicpc.net/problem/23848
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2021/12/24.
#


from sys import stdin

read = stdin.readline


def geometric_sequence(accumulated: int):
    for r in range(2, int(accumulated ** 0.5) + 1):
        n = 3
        while (value := (r ** n - 1) // (r - 1)) <= accumulated:
            if accumulated % value == 0:
                return (n, accumulated // value, r)
            n += 1
    return -1


if __name__ == "__main__":
    accumulated_sum = int(read())
    value = geometric_sequence(accumulated_sum)
    if value == -1:
        print(value)
    else:
        count, first, ratio = value
        print(count)
        for i in range(count):
            print(first * (ratio ** i), end=" ")

