# 1026번: 보물
# https://www.acmicpc.net/problem/1026
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    a = sorted(list(map(int, read().split())), reverse=True)
    b = sorted(list(map(int, read().split())))
    result = 0
    for i in range(count):
        result += a[i] * b[i]

    print(result)
