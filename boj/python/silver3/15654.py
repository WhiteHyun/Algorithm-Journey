# 15654번: N과 M (5)
# https://www.acmicpc.net/problem/15654
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == m:
        print(*sequence)
        return

    for i in range(n):
        if not is_used[i]:
            sequence[index] = number_list[i]
            is_used[i] = True
            back_tracking(index + 1)
            is_used[i] = False


if __name__ == "__main__":
    n, m = map(int, read().split())
    number_list = sorted(list(map(int, read().split())))
    sequence = [0] * m
    is_used = [False] * n
    back_tracking(0)

