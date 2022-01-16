#
#  2447번: 별 찍기 - 10
#  https://www.acmicpc.net/problem/2447
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/16.
#


from sys import stdin, stdout

read = stdin.readline
print = stdout.write


def recursion(i: int, j: int, size: int) -> None:
    if (i // size) % 3 == 1 and (j // size) % 3 == 1:
        print(" ")
    elif size // 3 == 0:
        print("*")
    else:
        recursion(i, j, size // 3)


if __name__ == "__main__":
    length = int(read())
    for i in range(length):
        for j in range(length):
            recursion(i, j, length)
        print("\n")
