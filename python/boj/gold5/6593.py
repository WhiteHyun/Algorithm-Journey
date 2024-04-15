#
#  6593번: 상범 빌딩
#  https://www.acmicpc.net/problem/6593
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/21.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":

    while True:
        floor, row, col = map(int, read().split())
        move_count = 0
        if floor == row == col == 0:
            break

        building = []
        visited = [list([False] * col for _ in range(row)) for _ in range(floor)]
        escape = (0, 0, 0)
        person = (0, 0, 0)

        # === building input ===
        for i in range(floor):
            building.append([])
            for j in range(row):
                building[-1].append(list(read().rstrip()))
                if "S" in building[-1][-1]:
                    person = (i, j, building[-1][-1].index("S"))
                if "E" in building[-1][-1]:
                    escape = (i, j, building[-1][-1].index("E"))
            read()  # 빈칸 입력

        # == 사람 위치 방문처리 ==
        d, x, y = person
        visited[d][x][y] = True

        # === BFS ===
        bfs = [person]
        while bfs:
            next_bfs = []
            for d, x, y in bfs:
                if building[d][x][y] == "E":
                    break
                # 윗층
                if d > 0 and building[d - 1][x][y] != "#" and not visited[d - 1][x][y]:
                    visited[d - 1][x][y] = True  # 방문처리
                    next_bfs.append((d - 1, x, y))
                # 아랫층
                if (
                    d < floor - 1
                    and building[d + 1][x][y] != "#"
                    and not visited[d + 1][x][y]
                ):
                    visited[d + 1][x][y] = True
                    next_bfs.append((d + 1, x, y))

                # 상
                if x > 0 and building[d][x - 1][y] != "#" and not visited[d][x - 1][y]:
                    visited[d][x - 1][y] = True
                    next_bfs.append((d, x - 1, y))

                # 하
                if (
                    x < row - 1
                    and building[d][x + 1][y] != "#"
                    and not visited[d][x + 1][y]
                ):
                    visited[d][x + 1][y] = True
                    next_bfs.append((d, x + 1, y))

                # 좌
                if y > 0 and building[d][x][y - 1] != "#" and not visited[d][x][y - 1]:
                    visited[d][x][y - 1] = True
                    next_bfs.append((d, x, y - 1))

                # 우
                if (
                    y < col - 1
                    and building[d][x][y + 1] != "#"
                    and not visited[d][x][y + 1]
                ):
                    visited[d][x][y + 1] = True
                    next_bfs.append((d, x, y + 1))
            else:
                bfs = next_bfs  # 갱신
                move_count += 1
                continue
            break
        else:
            print("Trapped!")
            continue
        print(f"Escaped in {move_count} minute(s).")
