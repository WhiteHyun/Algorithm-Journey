# 15650번: N과 M (2)
# https://www.acmicpc.net/problem/15650
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == m:
        if sorted(sequence) == sequence:
            print(*sequence)
        return

    for i in range(1, n + 1):
        if not is_used[i - 1]:
            sequence[index] = i
            is_used[i - 1] = True
            back_tracking(index + 1)
            is_used[i - 1] = False


if __name__ == "__main__":
    n, m = map(int, read().split())
    sequence = [0] * m
    is_used = [False] * n
    back_tracking(0)
