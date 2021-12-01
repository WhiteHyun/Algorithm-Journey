# 1929번: 소수 구하기
# https://www.acmicpc.net/problem/1929
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    start, end = map(int, read().split())
    prime_number_list = [True for _ in range(end + 1)]
    prime_number_list[1] = False
    for i in range(2, (start + end) >> 1):
        if not prime_number_list[i]:
            continue

        for j in range(i << 1, end + 1, i):
            prime_number_list[j] = False

    for i in range(start, end + 1):
        if prime_number_list[i]:
            print(i)
