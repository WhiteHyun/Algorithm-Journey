# 10998번: A×B
# https://www.acmicpc.net/problem/10998
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = map(int, read().split())
    print(a * b)
