# 1271번: 엄청난 부자2
# https://www.acmicpc.net/problem/1271
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = map(int, read().split())
    print(a // b)
    print(a % b)
