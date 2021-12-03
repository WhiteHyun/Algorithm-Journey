# 1094번: 막대기
# https://www.acmicpc.net/problem/1094
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    want_stick = int(read())
    print(bin(want_stick).count("1"))
