#
#  17086번: 아기 상어 2
#  https://www.acmicpc.net/problem/17086
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/28.
#


from sys import stdin

read = stdin.readline


def shark_safe_distance(x: int, y: int) -> int:
    pass


if __name__ == "__main__":
    row, col = map(int, read().split())
    field = []
    zero_list = []
    for i in range(row):
        field.append(list(map(int, read().split())))
        for j in range(col):
            if field[i][j] == 0:
                zero_list.append((i, j))  # 0인 구간의 x y 좌표를 추가

    maximum_distance = 0
    for x, y in zero_list:
        visited = [[False] * col for _ in range(row)]
        queue = [(x, y)]
        visited[x][y] = True
        distance = 0
        while queue:
            next_queue = []
            for i, j in queue:
                if field[i][j] == 1:  # 상어를 찾았다!
                    break
                # 상
                if i > 0 and not visited[i - 1][j]:
                    visited[i - 1][j] = True
                    next_queue.append((i - 1, j))

                # 하
                if i < row - 1 and not visited[i + 1][j]:
                    visited[i + 1][j] = True
                    next_queue.append((i + 1, j))

                # 좌
                if j > 0 and not visited[i][j - 1]:
                    visited[i][j - 1] = True
                    next_queue.append((i, j - 1))

                # 우
                if j < col - 1 and not visited[i][j + 1]:
                    visited[i][j + 1] = True
                    next_queue.append((i, j + 1))

                # 왼위
                if i > 0 and j > 0 and not visited[i - 1][j - 1]:
                    visited[i - 1][j - 1] = True
                    next_queue.append((i - 1, j - 1))

                # 왼아래
                if i < row - 1 and j > 0 and not visited[i + 1][j - 1]:
                    visited[i + 1][j - 1] = True
                    next_queue.append((i + 1, j - 1))

                # 오위
                if i > 0 and j < col - 1 and not visited[i - 1][j + 1]:
                    visited[i - 1][j + 1] = True
                    next_queue.append((i - 1, j + 1))

                # 오아래
                if i < row - 1 and j < col - 1 and not visited[i + 1][j + 1]:
                    visited[i + 1][j + 1] = True
                    next_queue.append((i + 1, j + 1))
            else:
                queue = next_queue
                distance += 1
                continue
            break
        if maximum_distance < distance:
            maximum_distance = distance

    print(maximum_distance)
