# 10817번: 세 수
# https://www.acmicpc.net/problem/10817
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(sorted(map(int, read().split()))[1])
