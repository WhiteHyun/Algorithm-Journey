#
#  4153번: 직각삼각형
#  https://www.acmicpc.net/problem/4153
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/22.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    while True:
        a, b, c = map(int, read().split())
        if a == 0 and b == 0 and c == 0:
            break
        square_a = a ** 2
        square_b = b ** 2
        square_c = c ** 2

        if (
            square_a + square_b == square_c
            or square_b + square_c == square_a
            or square_a + square_c == square_b
        ):
            print("right")
        else:
            print("wrong")

