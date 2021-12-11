# 1920번: 수 찾기
# https://www.acmicpc.net/problem/1920
# Version: Python 3.9.7


from sys import stdin, setrecursionlimit

setrecursionlimit(10000)
read = stdin.readline


def binary_search(array: list, start: int, end: int, goal_number: int) -> int:
    if start >= end:
        return 0
    mid = (start + end) >> 1
    if (mid_number := array[mid]) == goal_number:
        return 1
    elif mid_number > goal_number:  # 목표값이 더 작은 경우
        return binary_search(array, start, mid, goal_number)
    else:  # 목표값이 더 큰 경우
        return binary_search(array, mid + 1, end, goal_number)


if __name__ == "__main__":
    count = int(read())
    n_list = sorted(map(int, read().split()))
    _ = int(read())
    m_list = list(map(int, read().split()))

    for number in m_list:
        print(binary_search(n_list, 0, count, number))
