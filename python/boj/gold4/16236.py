#
#  16236번: 아기 상어
#  https://www.acmicpc.net/problem/16236
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/01.
#


from sys import stdin

read = stdin.readline


def set_visited(length: int) -> list:
    return [[False] * length for _ in range(length)]


if __name__ == "__main__":
    tank_size = int(read())
    tank = []
    # == baby shark settings ==
    baby_shark_pos = (0, 0)
    baby_shark_level = 2

    # == inputs ==
    for i in range(tank_size):
        # 수조 데이터 입력
        tank.append(list(map(int, read().split())))
        for j in range(tank_size):
            if tank[i][j] == 9:  # 아기 상어의 위치를 확인
                baby_shark_pos = (i, j)
                tank[i][j] = 0

    # == bfs ==
    # 상하좌우
    dx = (-1, 1, 0, 0)
    dy = (0, 0, -1, 1)
    bfs = [baby_shark_pos]
    eat_fish = 0  # 잡아먹은 마리수
    total_moved = 0  # 아기상어의 이동거리
    shark_moved = 0  # 먹을 수 있는 물고기가 있을 때 상어의 최소 이동 거리 (temp)
    visited = set_visited(tank_size)  # 방문위치확인
    x, y = baby_shark_pos
    visited[x][y] = True  # 현재 상어의 위치를 방문처리
    while bfs:
        next_bfs = []
        eat_pos = []
        for x, y in bfs:
            for i in range(4):  # 상하좌우 비교
                pos_x = x + dx[i]
                pos_y = y + dy[i]
                # 위치(index)를 벗어난 경우
                if pos_x < 0 or pos_y < 0 or pos_x == tank_size or pos_y == tank_size:
                    continue

                # 큰 물고기들이면 못들어감
                if baby_shark_level < tank[pos_x][pos_y]:
                    continue

                # 자기와 크기가 같거나 빈 칸이고, 방문하지 않은 곳일 경우
                if (
                    baby_shark_level == tank[pos_x][pos_y] or tank[pos_x][pos_y] == 0
                ) and not visited[pos_x][pos_y]:
                    visited[pos_x][pos_y] = True  # 방문표시
                    next_bfs.append((pos_x, pos_y))  # 다음에 방문하기위해 bfs에 위치를 넣음

                # 먹을 수 있는 물고기를 찾았다!
                if (
                    baby_shark_level > tank[pos_x][pos_y]
                    and tank[pos_x][pos_y] != 0
                    and not visited[pos_x][pos_y]
                ):
                    visited[pos_x][pos_y] = True  # 방문표시
                    eat_pos.append((pos_x, pos_y))  # 먹을 수 있는 물고기 좌표 추가

        # bfs를 돌면서 먹을 물고기가 없는 경우
        if not eat_pos:
            # bfs 큐 갱신
            bfs = next_bfs
            shark_moved += 1
        else:  # 먹을 물고기가 있넹?
            min_x = min_y = 200  # 임의로 큰 값 설정

            # 위-왼쪽 우선순위로 확인
            for x, y in eat_pos:
                # 위에 있거나, 같은 라인일 때 왼쪽에 있는지
                if x < min_x or (x == min_x and y < min_y):
                    min_x, min_y = x, y

            # 상어 위치이동
            total_moved += shark_moved + 1
            shark_moved = 0

            # 상어 위치 재설정
            baby_shark_pos = (min_x, min_y)

            # 레벨업 가능?
            eat_fish += 1
            if baby_shark_level == eat_fish:
                baby_shark_level += 1
                eat_fish = 0

            # == setup ==
            tank[min_x][min_y] = 0  # 먹었으므로 빈 공간으로 재설정
            visited = set_visited(tank_size)  # 방문처리 리스트 다시 재생성
            visited[min_x][min_y] = True  # 현재 위치 방문 처리
            bfs = [(min_x, min_y)]  # 처음부터 다시 bfs 시작!

            # == verbose ==
            # print("===================")
            # print(f"x={min_x}, y={min_y}, level: {baby_shark_level}")
            # print(f"{total_moved=}")
            # for line in tank:
            #     print(line)
            # print("===================")

    print(total_moved)
