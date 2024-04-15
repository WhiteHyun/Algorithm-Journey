# 15666번: N과 M (12)
# https://www.acmicpc.net/problem/15666
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == sequence_count:
        print(*sequence)
        return

    for i in range(number_count):
        # 비내림차순을 따를 경우 순회
        if index == 0 or (index != 0 and sequence[index - 1] <= number_list[i]):
            sequence[index] = number_list[i]
            back_tracking(index + 1)


if __name__ == "__main__":
    _, sequence_count = map(int, read().split())
    number_list = sorted(set(map(int, read().split())))
    number_count = len(number_list)
    sequence = [0] * sequence_count
    back_tracking(0)

