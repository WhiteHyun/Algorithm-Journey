# 2739번: 구구단
# https://www.acmicpc.net/problem/2739
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = int(read())
    for i in range(1, 10):
        print(f"{number} * {i} = {number*i}")
