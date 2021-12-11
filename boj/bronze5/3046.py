# 3046번: R2
# https://www.acmicpc.net/problem/3046
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = map(int, read().split())
    print(b * 2 - a)
