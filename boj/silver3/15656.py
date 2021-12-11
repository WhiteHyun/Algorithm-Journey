# 15656번: N과 M (7)
# https://www.acmicpc.net/problem/15656
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == m:
        print(*sequence)
        return

    for i in range(n):
        sequence[index] = number_list[i]
        back_tracking(index + 1)


if __name__ == "__main__":
    n, m = map(int, read().split())
    number_list = sorted(map(int, read().split()))
    sequence = [0] * m
    back_tracking(0)
