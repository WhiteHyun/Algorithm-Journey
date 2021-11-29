# 1476번: 날짜 계산
# https://www.acmicpc.net/problem/1476
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    earth, sun, moon = map(int, read().split())
    e, s, m = 1, 1, 1
    day = 1

    # Brute Force
    while e != earth or s != sun or m != moon:
        e = 1 if e == 15 else e + 1
        s = 1 if s == 28 else s + 1
        m = 1 if m == 19 else m + 1
        day += 1
    print(day)
