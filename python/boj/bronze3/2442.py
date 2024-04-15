#
#  2442번: 별 찍기 - 5
#  https://www.acmicpc.net/problem/2442
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/12.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    for i in range(length):
        print(" " * (length - i - 1), end="")
        print("*" * (i * 2 + 1))

