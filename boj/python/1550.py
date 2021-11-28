# 1550번: 16진수
# https://www.acmicpc.net/problem/1550
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(int(read().rstrip(), 16))
