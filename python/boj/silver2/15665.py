# 15665번: N과 M (11)
# https://www.acmicpc.net/problem/15665
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == sequence_count:
        print(*sequence)
        return

    last_selected = 0

    for i in range(number_count):
        if not is_used[i] and last_selected != number_list[i]:
            last_selected = number_list[i]
            sequence[index] = number_list[i]
            back_tracking(index + 1)


if __name__ == "__main__":
    number_count, sequence_count = map(int, read().split())
    number_list = sorted(map(int, read().split()))
    sequence = [0] * sequence_count
    is_used = [False] * number_count
    back_tracking(0)

