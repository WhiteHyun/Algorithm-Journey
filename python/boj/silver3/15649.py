# 15649번: N과 M (1)
# https://www.acmicpc.net/problem/15649
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == m:
        print(*sequence)
        return

    for i in range(1, n + 1):
        if not is_used[i - 1]:  # 사용되지 않았다면
            is_used[i - 1] = True
            sequence[index] = i
            back_tracking(index + 1)
            is_used[i - 1] = False


if __name__ == "__main__":
    n, m = map(int, read().split())
    sequence = [0] * m
    is_used = [False] * n
    back_tracking(0)
