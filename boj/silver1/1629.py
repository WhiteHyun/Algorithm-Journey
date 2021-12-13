#
#  1629번: 곱셈
#  https://www.acmicpc.net/problem/1629
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/11/20.
#

from sys import stdin

read = stdin.readline


def divide_and_conquer(base, exponent, div_num):
    if exponent == 1:
        return base % div_num

    return (
        divide_and_conquer(base, exponent >> 1, div_num) ** 2 % div_num
        if exponent & 1 == 0
        else base * divide_and_conquer(base, exponent >> 1, div_num) ** 2 % div_num
    )


if __name__ == "__main__":
    base, exponent, div_number = map(int, read().split())
    print(divide_and_conquer(base, exponent, div_number))

