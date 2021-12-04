# 2884번: 알람 시계
# https://www.acmicpc.net/problem/2884
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    hour, minute = map(int, read().split())
    minute -= 45
    if minute < 0:
        hour = hour - 1 if hour > 0 else 23
        minute += 60

    print(hour, minute)
