#
#  14502번: 연구소
#  https://www.acmicpc.net/problem/14502
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/02/12.
#


from sys import stdin
from collections import deque

read = stdin.readline
VIRUS = 2
WALL = 1

if __name__ == "__main__":

    # safety_area: 안전 지대 영역
    # virus_list: 바이러스가 있는 곳의 좌표
    # wall_list: 기존 벽이 있는 곳의 좌표
    # row: 행, col: 열
    # matrix: 연구소 좌표
    safety_area = 0
    virus_list = []
    wall_list = []
    row, col = map(int, read().split())
    matrix = [list(map(int, read().split())) for _ in range(row)]

    # 바이러스와 벽 위치 확인
    for i in range(row):
        for j in range(col):
            if matrix[i][j] == 2:
                virus_list.append((i, j))
            elif matrix[i][j] == 1:
                wall_list.append((i, j))

    # 상하좌우 BFS
    dx = (1, -1, 0, 0)
    dy = (0, 0, -1, 1)

    # i, j, k: 벽 3개를 둘 곳
    for i in range(row * col - 2):
        i_x = i // col
        i_y = i % col
        # 첫 번째 벽을 둘 곳에 바이러스, 또는 벽이 이미 있는 경우
        if matrix[i_x][i_y] in (WALL, VIRUS):
            continue

        for j in range(i + 1, row * col - 1):
            j_x = j // col
            j_y = j % col
            # 두 번째 벽을 둘 곳에 바이러스, 또는 벽이 이미 있는 경우
            if matrix[j_x][j_y] in (WALL, VIRUS):
                continue

            for k in range(j + 1, row * col):
                k_x = k // col
                k_y = k % col
                # 세 번째 벽을 둘 곳에 바이러스, 또는 벽이 이미 있는 경우
                if matrix[k_x][k_y] in (WALL, VIRUS):
                    continue

                visited = [[False] * col for _ in range(row)]

                # 벽 세 개를 방문 처리함
                visited[i_x][i_y] = True
                visited[j_x][j_y] = True
                visited[k_x][k_y] = True

                queue = deque(virus_list)

                # 바이러스와 벽도 미리 방문처리
                for temp_x, temp_y in virus_list:
                    visited[temp_x][temp_y] = True

                for temp_x, temp_y in wall_list:
                    visited[temp_x][temp_y] = True

                # == BFS ==
                while queue:
                    # queue의 길이만큼 반복
                    length = len(queue)
                    for _ in range(length):
                        x, y = queue.popleft()
                        for pos_i in range(4):
                            temp_x = x + dx[pos_i]
                            temp_y = y + dy[pos_i]
                            # 범위를 벗어났거나, 이미 방문했다면
                            if (
                                temp_x < 0
                                or temp_x >= row
                                or temp_y < 0
                                or temp_y >= col
                                or visited[temp_x][temp_y]
                            ):
                                continue
                            visited[temp_x][temp_y] = True
                            queue.append((temp_x, temp_y))

                # 안전 영역 구하기
                area = 0  # 구하고자 하는 안전 영역
                for line in visited:
                    area += line.count(False)
                if area > safety_area:
                    safety_area = area
    print(safety_area)
