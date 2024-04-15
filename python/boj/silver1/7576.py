# 7576번: 토마토
# https://www.acmicpc.net/problem/7576
# Version: Python 3.8.12


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    col, row = map(int, read().split())
    tomato_box = [list(map(int, read().split())) for _ in range(row)]
    visited = [[False] * col for _ in range(row)]

    queue = deque([])
    for x in range(row):
        for y in range(col):
            if tomato_box[x][y] == 1:  # 익은 토마토가 있다면
                visited[x][y] = True  # 익은 토마토의 위치는 방문처리
                queue.append((x, y))

    # BFS 시작
    day = -1
    while queue:

        next_queue = deque([])

        for x, y in queue:  # 모든 익은 토마토의 위치를 확인
            # 상
            if (
                x > 0
                and not visited[x - 1][y]
                and tomato_box[x - 1][y] != -1
                and tomato_box[x - 1][y] == 0
            ):
                visited[x - 1][y] = True
                next_queue.append((x - 1, y))
            # 하
            if (
                x < row - 1
                and not visited[x + 1][y]
                and tomato_box[x + 1][y] != -1
                and tomato_box[x + 1][y] == 0
            ):
                visited[x + 1][y] = True
                next_queue.append((x + 1, y))
            # 좌
            if (
                y > 0
                and not visited[x][y - 1]
                and tomato_box[x][y - 1] != -1
                and tomato_box[x][y - 1] == 0
            ):
                visited[x][y - 1] = True
                next_queue.append((x, y - 1))
            # 우
            if (
                y < col - 1
                and not visited[x][y + 1]
                and tomato_box[x][y + 1] != -1
                and tomato_box[x][y + 1] == 0
            ):
                visited[x][y + 1] = True
                next_queue.append((x, y + 1))

        queue = next_queue  # 그 다음 익은 토마토의 위치를 queue에 재할당
        day += 1

    for tomato_line, visited_line in zip(tomato_box, visited):
        for i in range(col):
            if tomato_line[i] == 0 and not visited_line[i]:
                print(-1)
                break
        else:
            continue
        break
    else:
        print(day)

