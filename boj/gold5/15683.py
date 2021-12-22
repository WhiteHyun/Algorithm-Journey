#
#  15683번: 감시
#  https://www.acmicpc.net/problem/15683
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2021/12/21.
#


from sys import stdin

read = stdin.readline

dx = (-1, 0, 1, 0)  # 상우하좌
dy = (0, 1, 0, -1)


def move(cctv_map: list, x: int, y: int, direction: int) -> None:
    """
    cctv 위치로부터 특정 방향까지 값을 변화시킵니다.
    단, 벽에 닿으면 그 즉시 종료합니다. (벽의 정수값은 6)
    """
    direction = direction % 4
    while True:
        # 위치 변경
        x += dx[direction]
        y += dy[direction]
        if x < 0 or x >= row or y < 0 or y >= col or cctv_map[x][y] == 6:
            return
        if cctv_map[x][y] != 0:  # 다른 CCTV인 경우
            continue
        cctv_map[x][y] = 7


if __name__ == "__main__":
    row, col = map(int, read().split())
    cctv_map = [list(map(int, read().split())) for _ in range(row)]

    cctv_list = []
    cctv_count = 0
    min_count = 64  # 최대 크기는 8x8
    # cctv의 위치를 찾아서 리스트에 저장
    for i in range(row):
        for j in range(col):
            if cctv_map[i][j] != 6 and cctv_map[i][j] != 0:
                cctv_list.append((i, j))
                cctv_count += 1

    for i in range(1 << (2 * cctv_count)):

        # map copy
        copied_cctv_map = [[0] * col for _ in range(row)]
        for x in range(row):
            for y in range(col):
                if cctv_map[x][y] != 0:
                    copied_cctv_map[x][y] = cctv_map[x][y]

        temp = i
        for x, y in cctv_list:
            dir = temp % 4
            if cctv_map[x][y] == 1:
                move(copied_cctv_map, x, y, dir)

            elif cctv_map[x][y] == 2:
                move(copied_cctv_map, x, y, dir)
                move(copied_cctv_map, x, y, dir + 2)

            elif cctv_map[x][y] == 3:
                move(copied_cctv_map, x, y, dir)
                move(copied_cctv_map, x, y, dir + 1)

            elif cctv_map[x][y] == 4:
                move(copied_cctv_map, x, y, dir)
                move(copied_cctv_map, x, y, dir + 1)
                move(copied_cctv_map, x, y, dir + 2)
            else:
                move(copied_cctv_map, x, y, dir)
                move(copied_cctv_map, x, y, dir + 1)
                move(copied_cctv_map, x, y, dir + 2)
                move(copied_cctv_map, x, y, dir + 3)
            temp //= 4

        # 사각지대를 구함
        is_min = 0
        for line in copied_cctv_map:
            is_min += line.count(0)
        if min_count > is_min:
            min_count = is_min

    print(min_count)
