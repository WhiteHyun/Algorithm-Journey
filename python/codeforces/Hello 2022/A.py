#
#  A. Stable Arrangement of Rooks
#  https://codeforces.com/contest/1621/problem/0
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/03.
#
from sys import stdin
from math import ceil

read = stdin.readline


if __name__ == "__main__":
    for _ in range(int(read())):
        chess_length, rooks_count = map(int, read().split())
        if rooks_count > ceil(chess_length / 2):
            print(-1)
            continue
        if chess_length == 1 and rooks_count == 1:
            print("R")
            continue

        for i in range(1, chess_length + 1):
            for j in range(1, chess_length + 1):
                if i % 2 != 0 and j % 2 != 0 and i == j and rooks_count > 0:
                    print("R", end="")
                    rooks_count -= 1
                else:
                    print(".", end="")
            print()
