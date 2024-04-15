# 1012번: 유기농 배추
# https://www.acmicpc.net/problem/1012
# Version: Python 3.9.7


from sys import stdin, setrecursionlimit

setrecursionlimit(10000)
read = stdin.readline


def dfs(field: list, x: int, y: int) -> None:
    if x < 0 or y < 0 or x == len(field) or y == len(field[0]):
        return
    if field[x][y] == 0:
        return
    field[x][y] = 0
    dfs(field, x, y - 1)  # 상
    dfs(field, x, y + 1)  # 하
    dfs(field, x - 1, y)  # 좌
    dfs(field, x + 1, y)  # 우


if __name__ == "__main__":
    test_case_count = int(read())
    for _ in range(test_case_count):
        height, width, k = map(int, read().split())
        # 텃밭을 만듦
        field = [[0 for _ in range(height)] for _ in range(width)]

        for _ in range(k):  # 배추 심음
            y, x = map(int, read().split())
            field[x][y] = 1

        worm_count = 0
        # === dfs ===
        for i in range(width):
            for j in range(height):
                if field[i][j] == 0:
                    continue
                dfs(field, i, j)
                worm_count += 1
        print(worm_count)
