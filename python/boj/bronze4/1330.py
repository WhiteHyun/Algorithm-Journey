# 1330번: 두 수 비교하기
# https://www.acmicpc.net/problem/1330
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = map(int, read().split())
    if a > b:
        print(">")
    elif a < b:
        print("<")
    else:
        print("==")
