# 1110번: 더하기 사이클
# https://www.acmicpc.net/problem/1110
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    raw_number = int(read())
    count = 0
    new_number = raw_number
    while True:
        new_number = new_number % 10 * 10 + (new_number // 10 + new_number % 10) % 10
        count += 1
        if new_number == raw_number:
            break

    print(count)
