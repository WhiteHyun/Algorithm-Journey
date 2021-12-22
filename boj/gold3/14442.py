#
#  14442번: 벽 부수고 이동하기 2
#  https://www.acmicpc.net/problem/14442
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/22.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    row, col, k = map(int, read().split())
    matrix = [list(map(int, list(read().rstrip()))) for _ in range(row)]
    visited = [[[False] * col for _ in range(row)] for _ in range(k + 1)]
    bfs = [(0, 0, k)]
    count = 0

    # 초반 방문 처리
    visited[k][0][0] = True
    while bfs:
        next_bfs = []
        count += 1
        for x, y, chance in bfs:
            if x == row - 1 and y == col - 1:
                break

            # 상
            if x > 0 and not visited[chance][x - 1][y]:
                # 벽을 부실 수 있는 기회가 있는가
                if chance and matrix[x - 1][y] == 1:
                    visited[chance][x - 1][y] = True
                    next_bfs.append((x - 1, y, chance - 1))
                elif matrix[x - 1][y] == 0:
                    visited[chance][x - 1][y] = True
                    next_bfs.append((x - 1, y, chance))
            # 하
            if x < row - 1 and not visited[chance][x + 1][y]:
                # 벽을 부실 수 있는 기회가 있는가
                if chance and matrix[x + 1][y] == 1:
                    visited[chance][x + 1][y] = True
                    next_bfs.append((x + 1, y, chance - 1))
                elif matrix[x + 1][y] == 0:
                    visited[chance][x + 1][y] = True
                    next_bfs.append((x + 1, y, chance))
            # 좌
            if y > 0 and not visited[chance][x][y - 1]:
                # 벽을 부실 수 있는 기회가 있는가
                if chance and matrix[x][y - 1] == 1:
                    visited[chance][x][y - 1] = True
                    next_bfs.append((x, y - 1, chance - 1))
                elif matrix[x][y - 1] == 0:
                    visited[chance][x][y - 1] = True
                    next_bfs.append((x, y - 1, chance))
            # 우
            if y < col - 1 and not visited[chance][x][y + 1]:
                # 벽을 부실 수 있는 기회가 있는가
                if chance and matrix[x][y + 1] == 1:
                    visited[chance][x][y + 1] = True
                    next_bfs.append((x, y + 1, chance - 1))
                elif matrix[x][y + 1] == 0:
                    visited[chance][x][y + 1] = True
                    next_bfs.append((x, y + 1, chance))
        else:
            bfs = next_bfs
            continue
        break
    else:
        print(-1)
        exit(0)
    print(count)
