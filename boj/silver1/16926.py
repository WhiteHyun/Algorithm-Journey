#
#  16926번: 배열 돌리기 1
#  https://www.acmicpc.net/problem/16926
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/21.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    row, col, counterclockwise_count = map(int, read().split())
    matrix = [read().split() for _ in range(row)]
    # 최소로 돌려야 하는 사각형의 수
    min_rotate_count = min(row, col) >> 1
    rotations_per_cycle = (row - 1) << 1 + (col - 1) << 1

    for _ in range(counterclockwise_count % rotations_per_cycle):
        # == rotate part ==
        for i in range(min_rotate_count):
            temp = matrix[i][i]
            # 오 -> 왼
            for j in range(i, (col - 1) - i):
                matrix[i][j] = matrix[i][j + 1]

            # 아래 -> 위
            for j in range(i, (row - 1) - i):
                matrix[j][col - 1 - i] = matrix[j + 1][col - 1 - i]

            # 왼 -> 오
            for j in range((col - 1) - i, i, -1):
                matrix[row - 1 - i][j] = matrix[row - 1 - i][j - 1]

            # # 위 -> 아래
            for j in range((row - 1) - i, i, -1):
                matrix[j][i] = matrix[j - 1][i]
            matrix[i + 1][i] = temp
    for row in matrix:
        print(*row)
