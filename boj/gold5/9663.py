# 9663번: N-Queen
# https://www.acmicpc.net/problem/9663
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> int:
    count = 0
    if index == size:
        return 1

    for i in range(size):
        if (
            is_col_used[i]
            or is_left_diagonal_used[index - i + size - 1]
            or is_right_diagonal_used[index + i]
        ):
            continue
        is_col_used[i] = True
        is_left_diagonal_used[index - i + size - 1] = True
        is_right_diagonal_used[index + i] = True
        count += back_tracking(index + 1)
        is_col_used[i] = False
        is_left_diagonal_used[index - i + size - 1] = False
        is_right_diagonal_used[index + i] = False
    return count


if __name__ == "__main__":
    size = int(read())  # 체스판 사이즈 입력
    is_col_used = [False] * size
    is_left_diagonal_used = [False] * (size * 2 - 1)
    is_right_diagonal_used = [False] * (size * 2 - 1)
    print(back_tracking(0))
