# 1085번: 직사각형에서 탈출
# https://www.acmicpc.net/problem/1085
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    x, y, w, h = map(int, read().split())
    print(min(w - x, x, h - y, y))
