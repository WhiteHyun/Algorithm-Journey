# 14681번: 사분면 고르기
# https://www.acmicpc.net/problem/14681
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    x = int(read())
    y = int(read())
    if x > 0 and y > 0:
        print(1)
    elif x > 0 and y < 0:
        print(4)
    elif x < 0 and y > 0:
        print(2)
    else:
        print(3)
