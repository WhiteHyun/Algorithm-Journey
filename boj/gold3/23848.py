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
    for a in range(1, accumulated // 3):
        for r in range(2, accumulated // 3):
            n = 3
            while (value := a * (r ** n - 1) // (r - 1)) < accumulated:
                n += 1
            if value == accumulated:
                return (n, a, r)
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

