# 15663번: N과 M (9)
# https://www.acmicpc.net/problem/15663
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == m:
        print(*sequence)
        return

    last_selected = 0

    for i in range(n):
        if not is_used[i] and number_list[i] != last_selected:
            last_selected = number_list[i]
            sequence[index] = number_list[i]
            is_used[i] = True
            back_tracking(index + 1)
            is_used[i] = False


if __name__ == "__main__":
    n, m = map(int, read().split())
    number_list = sorted(map(int, read().split()))
    sequence = [0] * m
    is_used = [False] * n
    back_tracking(0)
