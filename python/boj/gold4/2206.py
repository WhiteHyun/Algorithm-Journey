#
#  2206번: 벽 부수고 이동하기
#  https://www.acmicpc.net/problem/2206
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/23.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    row, col = map(int, read().split())
    escape_map = [list(map(int, list(read().rstrip()))) for _ in range(row)]

    # 3차원 리스트, 행과 열, 그리고 부순 횟수에 따른 방문
    visited = [[[False] * col for _ in range(row)] for _ in range(2)]

    bfs = [(0, 0, 1)]  # (0, 0)부터 시작 부술 기회는 1번
    visited[1][0][0] = True

    # == BFS ==

    dx = (-1, 1, 0, 0)  # 상 하
    dy = (0, 0, -1, 1)  # 좌 우
    count = 1  # 최소 방문 횟수

    while bfs:

        next_bfs = []
        for x, y, chance in bfs:
            if x == row - 1 and y == col - 1:
                break
            for i in range(4):  # 상 하 좌 우
                temp_x = x + dx[i]
                temp_y = y + dy[i]

                # 외부벽일 때
                if temp_x < 0 or temp_y < 0 or temp_x > row - 1 or temp_y > col - 1:
                    continue
                # 부술 기회가 있으며 벽을 맞닥뜨렸을 때
                if (
                    chance
                    and escape_map[temp_x][temp_y] == 1
                    and not visited[chance - 1][temp_x][temp_y]
                ):
                    next_bfs.append((temp_x, temp_y, chance - 1))
                    visited[chance - 1][temp_x][temp_y] = True
                # 그냥 지나갈 수 있는 통로인 경우
                elif (
                    escape_map[temp_x][temp_y] == 0
                    and not visited[chance][temp_x][temp_y]
                ):
                    next_bfs.append((temp_x, temp_y, chance))
                    visited[chance][temp_x][temp_y] = True
        else:
            bfs = next_bfs
            count += 1
            continue
        break

    else:
        print(-1)
        exit(0)
    print(count)
