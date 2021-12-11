# 1926번: 그림
# https://www.acmicpc.net/problem/1926
# Version: Python 3.9.7


from sys import stdin
from collections import deque

read = stdin.readline


if __name__ == "__main__":
    row, col = map(int, read().split())
    paper = [list(map(int, read().split())) for _ in range(row)]
    count = 0
    size = 0
    queue = deque([])
    for i in range(row):
        for j in range(col):
            if paper[i][j] == 1:  # 시작점 노드가 될 수 있다면
                count += 1  # 그림의 개수 1 증가
                paper[i][j] = 0  # 방문 표시
                queue.append((i, j))
                temp_size = 0
                while queue:
                    x, y = queue.popleft()
                    temp_size += 1
                    # 상
                    if x > 0 and paper[x - 1][y] == 1:
                        paper[x - 1][y] = 0
                        queue.append((x - 1, y))
                    # 하
                    if x < row - 1 and paper[x + 1][y] == 1:
                        paper[x + 1][y] = 0
                        queue.append((x + 1, y))
                    # 좌
                    if y > 0 and paper[x][y - 1] == 1:
                        paper[x][y - 1] = 0
                        queue.append((x, y - 1))
                    # 우
                    if y < col - 1 and paper[x][y + 1] == 1:
                        paper[x][y + 1] = 0
                        queue.append((x, y + 1))

                if temp_size > size:  # 방금 구한 그림의 크기가 이전에 구한 그림보다 큰 경우
                    size = temp_size

    print(count)
    print(size)
