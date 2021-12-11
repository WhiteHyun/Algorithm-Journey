# 1037번: 약수
# https://www.acmicpc.net/problem/1037
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    divisor_list = sorted(map(int, read().split()))
    if count & 1:
        print(divisor_list[count >> 1] ** 2)
    else:
        print(divisor_list[0] * divisor_list[-1])

