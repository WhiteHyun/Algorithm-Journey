# 15664번: N과 M (10)
# https://www.acmicpc.net/problem/15664
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
            # 비내림차순을 따를 때만 함수 순회
            if index == 0 or (index != 0 and sequence[index - 1] <= number_list[i]):
                last_selected = number_list[i]
                sequence[index] = number_list[i]
                is_used[i] = True
                back_tracking(index + 1)
                is_used[i] = False


if __name__ == "__main__":
    number_count, sequence_count = map(int, read().split())
    number_list = sorted(map(int, read().split()))
    sequence = [0] * sequence_count
    is_used = [False] * number_count
    back_tracking(0)

