# 1439번: 뒤집기
# https://www.acmicpc.net/problem/1439
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = read().rstrip()
    split_0 = list(filter(lambda x: x.isnumeric(), number.split("0")))
    split_1 = list(filter(lambda x: x.isnumeric(), number.split("1")))
    print(min(len(split_0), len(split_1)))
