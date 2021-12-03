# 2178번: 미로 탐색
# https://www.acmicpc.net/problem/2178
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


if __name__ == "__main__":
    row, col = map(int, read().split())
    maze = [list(map(int, list(read().rstrip()))) for _ in range(row)]
    queue = [(0, 0)]
    maze[0][0] = 0
    trials = 0

    while queue:
        trials += 1  # 횟수 1 증가
        next_queue = []
        for x, y in queue:
            if x == row - 1 and y == col - 1:  # 도착점 발견
                break

            # 상
            if x > 0 and maze[x - 1][y] != 0:
                next_queue.append((x - 1, y))
                maze[x - 1][y] = 0  # 방문할 곳은 0으로 바꿈
            # 하
            if x < row - 1 and maze[x + 1][y] != 0:
                next_queue.append((x + 1, y))
                maze[x + 1][y] = 0  # 방문할 곳은 0으로 바꿈
            # 좌
            if y > 0 and maze[x][y - 1] != 0:
                next_queue.append((x, y - 1))
                maze[x][y - 1] = 0  # 방문할 곳은 0으로 바꿈
            # 우
            if y < col - 1 and maze[x][y + 1] != 0:
                next_queue.append((x, y + 1))
                maze[x][y + 1] = 0  # 방문할 곳은 0으로 바꿈
        else:
            queue = next_queue
            continue
        break

    print(trials)
