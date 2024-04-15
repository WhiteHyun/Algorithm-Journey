# 1182번: 부분수열의 합
# https://www.acmicpc.net/problem/1182
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int, total_add: int) -> int:
    count = 0
    if index == number_count:
        return 1 if total_add == want_sum_number else 0

    count += back_tracking(index + 1, total_add)
    count += back_tracking(index + 1, total_add + number_list[index])
    return count


if __name__ == "__main__":
    number_count, want_sum_number = map(int, read().split())
    number_list = list(map(int, read().split()))
    is_used = [False] * number_count
    sequence = []
    count = 0 if want_sum_number != 0 else -1
    count += back_tracking(0, 0)
    print(count)

