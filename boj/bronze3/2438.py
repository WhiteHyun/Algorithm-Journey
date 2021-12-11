# 2438번: 별 찍기 - 1
# https://www.acmicpc.net/problem/2438
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for i in range(1, int(read()) + 1):
        print("*" * i)
