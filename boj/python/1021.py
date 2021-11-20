# 1021번: 회전하는 큐
# https://www.acmicpc.net/problem/1021
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    size, _ = map(int, read().split())
    input_list = list(map(int, read().split()))
    deque = [i for i in range(1, size + 1)]
    minimum = 0  # 최소 이동값
    position = 0  # 현재 위치

    for number in input_list:
        index = deque.index(number)
        minimum += min(abs(index - position), len(deque) - abs(index - position))
        deque.pop(index)
        position = index if index < len(deque) else 0

    print(minimum)
