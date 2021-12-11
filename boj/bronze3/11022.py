# 11022번: A+B - 8
# https://www.acmicpc.net/problem/11022
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    for i in range(1, count + 1):
        a, b = map(int, read().split())
        print(f"Case #{i}: {a} + {b} = {a+b}")
