# 15652번: N과 M (4)
# https://www.acmicpc.net/problem/15652
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == m:  # 수열이 꽉 찬 경우
        if sorted(sequence) == sequence:
            print(*sequence)
        return

    for i in range(1, n + 1):
        if index > 0 and sequence[index - 1] <= i:
            sequence[index] = i
            back_tracking(index + 1)
        elif index == 0:
            sequence[index] = i
            back_tracking(index + 1)


if __name__ == "__main__":
    n, m = map(int, read().split())
    sequence = [0] * m
    back_tracking(0)

