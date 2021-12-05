# 2439번: 별 찍기 - 2
# https://www.acmicpc.net/problem/2439
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    for i in range(count - 1, -1, -1):
        print(" " * i, end="")
        print("*" * (count - i))
