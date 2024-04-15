#
#  17144번: 미세먼지 안녕!
#  https://www.acmicpc.net/problem/17144
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/23.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    row, col, time = map(int, read().split())
    room_matrix = [list(map(int, read().split())) for _ in range(row)]
    queue = deque()
    clean_machine = []
    for i in range(row):
        for j in range(col):
            if room_matrix[i][j] >= 5:
                queue.append((i, j, room_matrix[i][j]))
            if room_matrix[i][j] == -1:  # 공기청정기 찾기
                clean_machine.append((i, j))

    dx = [-1, 1, 0, 0]
    dy = [0, 0, -1, 1]
    for _ in range(time):
        # 1. 미세먼지 확산시키기
        length = len(queue)
        for _ in range(length):
            i, j, value = queue.popleft()
            decrease_count = 0
            for index in range(4):
                x = i + dx[index]
                y = j + dy[index]
                if x < 0 or x > row - 1 or y < 0 or y > col - 1:
                    continue
                if room_matrix[x][y] == -1:  # 공기청정기 위치인 경우
                    continue

                room_matrix[x][y] += value // 5
                decrease_count += 1
            room_matrix[i][j] -= value // 5 * decrease_count
        for i in range(len(queue)):
            if queue[i][2] is None:
                x, y, _ = queue[i]
                queue[i] = (x, y, room_matrix[x][y])

        # 2. 공기청정기 돌리기
        # 2-1. 반시계방향
        pos_x, pos_y = clean_machine[0]

        for i in range(pos_x - 1, 0, -1):
            room_matrix[i][0] = room_matrix[i - 1][0]
        for j in range(col - 1):
            room_matrix[0][j] = room_matrix[0][j + 1]
        for i in range(pos_x):
            room_matrix[i][col - 1] = room_matrix[i + 1][col - 1]
        for j in range(col - 1, 1, -1):
            room_matrix[pos_x][j] = room_matrix[pos_x][j - 1]
        room_matrix[pos_x][1] = 0

        # 2-2. 시계방향
        pos_x, pos_y = clean_machine[1]
        for i in range(pos_x + 1, row - 1):
            room_matrix[i][0] = room_matrix[i + 1][0]
        for j in range(col - 1):
            room_matrix[row - 1][j] = room_matrix[row - 1][j + 1]
        for i in range(row - 1, pos_x, -1):
            room_matrix[i][col - 1] = room_matrix[i - 1][col - 1]
        for j in range(col - 1, 1, -1):
            room_matrix[pos_x][j] = room_matrix[pos_x][j - 1]
        room_matrix[pos_x][1] = 0

        # 3. 미세먼지 찾기
        for i in range(row):
            for j in range(col):
                if room_matrix[i][j] >= 5:
                    queue.append((i, j, room_matrix[i][j]))

    print(sum(map(sum, room_matrix)) + 2)
