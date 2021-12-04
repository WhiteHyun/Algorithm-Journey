# 2523번: 별 찍기 - 13
# https://www.acmicpc.net/problem/2523
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    for i in range(1, count + 1):
        print("*" * i)
    for i in range(count - 1, 0, -1):
        print("*" * i)

