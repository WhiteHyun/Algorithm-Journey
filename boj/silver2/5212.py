#
#  5212번: 지구 온난화
#  https://www.acmicpc.net/problem/5212
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/24.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    row, col = map(int, read().split())
    matrix = [list(read().rstrip()) for _ in range(row)]
    sea_set = set()
    stack = []
    for i in range(row):
        for j in range(col):
            if matrix[i][j] == "X":
                stack.append((i, j))

    dx = [-1, 1, 0, 0]
    dy = [0, 0, -1, 1]
    while stack:
        i, j = stack.pop()

        sea_count = 0
        for index in range(4):
            x = i + dx[index]
            y = j + dy[index]
            if x < 0 or y < 0 or x > row - 1 or y > col - 1:
                sea_count += 1
                continue
            if matrix[x][y] == ".":
                sea_count += 1

        if sea_count >= 3:
            sea_set.add((i, j))
    # 잠김 표시
    for i, j in sea_set:
        matrix[i][j] = "."

    # 테두리 제거하기
    # 윗단 제거
    while all(map(lambda x: x == ".", matrix[0])):
        matrix = matrix[1:]

    # 아랫단 제거
    while all(map(lambda x: x == ".", matrix[-1])):
        matrix.pop()
    # 왼쪽 제거
    while all(map(lambda x: x[0] == ".", matrix)):
        for i in range(len(matrix)):
            matrix[i] = matrix[i][1:]

    # 오른쪽 제거
    while all(map(lambda x: x[-1] == ".", matrix)):
        for element in matrix:
            element.pop()
    for element in matrix:
        print("".join(element))
