#
#  23899번: 알고리즘 수업 - 선택 정렬 5
#  https://www.acmicpc.net/problem/23899
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/27.
#


from sys import stdin

read = stdin.readline


def solve(sequence: list, compare: list, length: int) -> int:
    if compare == sequence:
        return 1
    for i in range(length - 1, 0, -1):
        max_i = 0
        for j in range(i + 1):
            if sequence[j] > sequence[max_i]:
                max_i = j

        if max_i != i:
            sequence[max_i], sequence[i] = sequence[i], sequence[max_i]

        if compare == sequence:
            return 1
    return 0


if __name__ == "__main__":
    length = int(read())
    sequence = list(map(int, read().split()))
    compare_sequence = list(map(int, read().split()))
    print(solve(sequence, compare_sequence, length))
