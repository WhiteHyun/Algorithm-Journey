# 8393번: 합
# https://www.acmicpc.net/problem/8393
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(sum([i for i in range(1, int(read()) + 1)]))
