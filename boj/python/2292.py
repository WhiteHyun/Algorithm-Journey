# 2292번: 벌집
# https://www.acmicpc.net/problem/2292
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = int(read())
    count = 1
    honeycomb_count = 1
    while number > honeycomb_count:
        honeycomb_count += 6 * count
        count += 1
    print(count)
