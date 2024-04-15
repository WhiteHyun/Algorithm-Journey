# 1929번: 소수 구하기
# https://www.acmicpc.net/problem/1929
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    start, end = map(int, read().split())
    prime_number_list = [True for _ in range(end + 1)]
    prime_number_list[1] = False
    for i in range(2, int(end ** 0.5) + 1):
        if not prime_number_list[i]:
            continue
        # 소수의 제곱부터 바꿔나감 (이미 자신 이하의 소수 중에서 소인수되는 애들은 제외하여 성능 향상)
        for j in range(i * i, end + 1, i):
            prime_number_list[j] = False

    for i in range(start, end + 1):
        if prime_number_list[i]:
            print(i)
