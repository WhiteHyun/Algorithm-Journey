# 1978번: 소수 찾기
# https://www.acmicpc.net/problem/1978
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    count = 0
    for number in map(int, read().split()):
        if number == 1:
            count += 1
            continue
        for i in range(2, (number >> 1) + 1):
            if number % i == 0:
                count += 1
                break

    print(length - count)
