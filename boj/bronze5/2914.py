# 2914번: 저작권
# https://www.acmicpc.net/problem/2914
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, i = map(int, read().split())
    print(a * (i - 1) + 1)
