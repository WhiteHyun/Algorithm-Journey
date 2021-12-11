# 10430번: 나머지
# https://www.acmicpc.net/problem/10430
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b, c = map(int, read().split())
    print((a + b) % c)
    print(((a % c) + (b % c)) % c)
    print((a * b) % c)
    print(((a % c) * (b % c)) % c)
