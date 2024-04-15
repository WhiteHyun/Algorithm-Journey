#
#  7569번: 토마토
#  https://www.acmicpc.net/problem/7569
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/11.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    height, width, depth = map(int, read().split())
    tomato_boxes = [
        [list(map(int, read().split())) for _ in range(width)] for _ in range(depth)
    ]
    visited = [[[False] * height for _ in range(width)] for _ in range(depth)]

    dx = (1, -1, 0, 0, 0, 0)
    dy = (0, 0, 1, -1, 0, 0)
    dz = (0, 0, 0, 0, 1, -1)

    queue = deque()

    # 익은 토마토 찾기
    for i in range(depth):
        for j in range(width):
            for k in range(height):
                if tomato_boxes[i][j][k] == 1:
                    queue.append((i, j, k))
                    visited[i][j][k] = True  # 미리 방문 처리
                elif tomato_boxes[i][j][k] == -1:
                    visited[i][j][k] = True  # 미리 방문 처리

    count = 0
    # == bfs ==
    while queue:
        length = len(queue)
        for _ in range(length):
            i, j, k = queue.popleft()
            for index in range(6):
                z = i + dz[index]
                x = j + dx[index]
                y = k + dy[index]

                if x < 0 or y < 0 or z < 0 or x >= width or y >= height or z >= depth:
                    continue

                if tomato_boxes[z][x][y] == 0 and not visited[z][x][y]:
                    tomato_boxes[z][x][y] = 1
                    visited[z][x][y] = True
                    queue.append((z, x, y))
        count += 1

    # 다 익었는지 확인
    for tomato_box in tomato_boxes:
        for tomato_line in tomato_box:
            if tomato_line.count(False):
                print(-1)
                break
        else:
            continue
        break
    else:
        print(count - 1)
