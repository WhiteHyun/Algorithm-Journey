# 1789번: 수들의 합
# https://www.acmicpc.net/problem/1789
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # k(k+1) / 2 = x 일 때, x의 값은 입력에 받으므로 k값에 따른 수식을 만들어서 출력함.
    print(int((-1 + (1 + 8 * int(read())) ** 0.5) // 2))

