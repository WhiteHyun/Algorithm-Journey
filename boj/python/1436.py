# 1436번: 영화감독 숌
# https://www.acmicpc.net/problem/1436
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    nth_number = int(read())  # n번쨰 숫자

    count = 0
    i = 666
    while True:
        if "666" in str(i):
            count += 1
            if count == nth_number:
                print(i)
                break
        i += 1
