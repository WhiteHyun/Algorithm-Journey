# 18406번: 럭키 스트레이트
# https://www.acmicpc.net/problem/18406
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = read().rstrip()
    length = len(number)
    if sum(map(int, number[: length >> 1])) == sum(map(int, number[length >> 1 :])):
        print("LUCKY")
    else:
        print("READY")

