#
#  3085번: 사탕 게임
#  https://www.acmicpc.net/problem/3085
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/09.
#


from sys import stdin

read = stdin.readline

# 빨간색은 C, 파란색은 P, 초록색은 Z, 노란색은 Y
def max_eat_count(candies: list, length: int, row: int, col: int) -> int:
    count = 0

    # 행 비교
    candy = candies[0][col]
    candy_count = 1
    for i in range(1, length):
        if candy == candies[i][col]:
            candy_count += 1
        else:
            candy = candies[i][col]
            candy_count = 1

        if candy_count > count:
            count = candy_count

    # 엷 비교
    candy = candies[row][0]
    candy_count = 1
    for j in range(1, length):
        if candy == candies[row][j]:
            candy_count += 1
        else:
            candy = candies[row][j]
            candy_count = 1

        if candy_count > count:
            count = candy_count

    return count


def swap_values(sequence: list, i: int, j: int, x: int, y: int) -> None:
    sequence[i][j], sequence[x][y] = sequence[x][y], sequence[i][j]


if __name__ == "__main__":
    length = int(read())
    candy_list = [list(read().rstrip()) for _ in range(length)]
    count = 0
    already_repeated = False
    dx = (1, -1, 0, 0)
    dy = (0, 0, 1, -1)

    for i in range(length):
        for j in range(length):

            for d_index in range(4):
                temp_i = i + dx[d_index]
                temp_j = j + dy[d_index]

                # 범위를 벗어났다면
                if temp_i < 0 or temp_j < 0 or temp_i >= length or temp_j >= length:
                    continue

                # 같은 사탕이라면
                elif (
                    candy_list[i][j] == candy_list[temp_i][temp_j] and already_repeated
                ):
                    continue

                # 값 변경
                swap_values(candy_list, temp_i, temp_j, i, j)

                # 값 비교
                temp_count = max_eat_count(candy_list, length, i, j)
                if temp_count > count:
                    count = temp_count

                # 값 복구
                swap_values(candy_list, temp_i, temp_j, i, j)

                if candy_list[i][j] == candy_list[temp_i][temp_j] and already_repeated:
                    already_repeated = True

    print(count)
