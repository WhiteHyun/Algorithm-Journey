#
#  2441번: 별 찍기 - 4
#  https://www.acmicpc.net/problem/2441
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/01.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    value = int(read())
    for i in range(value, 0, -1):
        print(" " * (value - i), end="")
        print("*" * i)
