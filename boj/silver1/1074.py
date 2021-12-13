#
#  1074번: Z
#  https://www.acmicpc.net/problem/1074
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/13.
#


from sys import stdin

read = stdin.readline


def divide_and_conquer(n: int, x: int, y: int):
    if n == 0:
        return 0
    half = 1 << (n - 1)  # 현 함수에서 한 변의 길이의 절반
    if x < half and y < half:  # 1사분면일 때
        return divide_and_conquer(n - 1, x, y)
    elif x < half and y >= half:  # 2사분면일 때
        return half * half + divide_and_conquer(n - 1, x, y - half)
    elif x >= half and y < half:  # 3사분면일 때
        return 2 * half * half + divide_and_conquer(n - 1, x - half, y)
    # 4사분면일 때
    return 3 * half * half + divide_and_conquer(n - 1, x - half, y - half)


if __name__ == "__main__":
    n, r, c = map(int, read().split())
    print(divide_and_conquer(n, r, c))

