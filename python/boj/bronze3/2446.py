#
#  2446번: 별 찍기 - 9
#  https://www.acmicpc.net/problem/2446
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/14.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    for i in range(count, 1, -1):
        print(" " * (count - i), end="")
        print("*" * (i * 2 - 1))

    for i in range(count):
        print(" " * (count - i - 1), end="")
        print("*" * (i * 2 + 1))
