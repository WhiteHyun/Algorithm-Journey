# 4179번: 불!
# https://www.acmicpc.net/problem/4179
# Version: Python 3.9.7


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    row, col = map(int, read().split())
    maze = [list(read().rstrip()) for _ in range(row)]
    fire_queue = deque([])  # 불 bfs
    person_queue = deque([])  # 사람 bfs

    for x in range(row):
        for y in range(col):
            if maze[x][y] == "J":
                person_queue.append((x, y))

            elif maze[x][y] == "F":
                fire_queue.append((x, y))

    hour = 0
    while fire_queue or person_queue:
        next_fire_queue = deque([])
        next_person_queue = deque([])
        escape = False
        for x, y in person_queue:  # 사람이 미로에서 지나갈 수 있는 위치를 가져옴
            if maze[x][y] == "F":  # 이미 불이 번져있으면 죽은거나 마찬가지임
                continue
            if x == 0 or x == row - 1 or y == 0 or y == col - 1:
                escape = True  # 탈출 성공했으므로 큐를 돌 필요는 없음
                break

            # 상
            if x > 0 and maze[x - 1][y] == ".":
                next_person_queue.append((x - 1, y))
                maze[x - 1][y] = "J"

            # 하
            if x < row - 1 and maze[x + 1][y] == ".":
                next_person_queue.append((x + 1, y))
                maze[x + 1][y] = "J"

            # 좌
            if y > 0 and maze[x][y - 1] == ".":
                next_person_queue.append((x, y - 1))
                maze[x][y - 1] = "J"

            # 우
            if y < col - 1 and maze[x][y + 1] == ".":
                next_person_queue.append((x, y + 1))
                maze[x][y + 1] = "J"
        if escape:  # 탈출 성공했는가
            break

        for x, y in fire_queue:  # 불을 지피자 ~

            # 주변이 벽이 아니거나 이미 불지른 곳이면 스킵
            # 상
            if x > 0 and maze[x - 1][y] != "#" and maze[x - 1][y] != "F":
                next_fire_queue.append((x - 1, y))
                maze[x - 1][y] = "F"

            # 하
            if x < row - 1 and maze[x + 1][y] != "#" and maze[x + 1][y] != "F":
                next_fire_queue.append((x + 1, y))
                maze[x + 1][y] = "F"

            # 좌
            if y > 0 and maze[x][y - 1] != "#" and maze[x][y - 1] != "F":
                next_fire_queue.append((x, y - 1))
                maze[x][y - 1] = "F"

            # 우
            if y < col - 1 and maze[x][y + 1] != "#" and maze[x][y + 1] != "F":
                next_fire_queue.append((x, y + 1))
                maze[x][y + 1] = "F"

        # 다음에 들어갈 큐를 기존 큐에 재할당하는 과정
        fire_queue = next_fire_queue
        person_queue = next_person_queue
        # 시간 경과..
        hour += 1
    else:  # 큐를 전부 돌았다면 길을 못찾았다는 뜻
        print("IMPOSSIBLE")
        exit()  # 종료
    print(hour + 1)

