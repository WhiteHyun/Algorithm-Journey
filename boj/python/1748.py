# 1748번: 수 이어 쓰기 1
# https://www.acmicpc.net/problem/1748
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    n = int(read())
    multiple = 1
    count = 0
    while multiple <= n:
        count += n - multiple + 1
        multiple *= 10
    print(count)
