# 1008번: A/B
# https://www.acmicpc.net/problem/1008
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = map(int, read().split())
    print(a / b)
