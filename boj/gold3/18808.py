#
#  18808번: 스티커 붙이기
#  https://www.acmicpc.net/problem/18808
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/26.
#


from sys import stdin

read = stdin.readline


def pastable(space: list, sticker: list, x: int, y: int) -> bool:

    for st_x in range(len(sticker)):
        for st_y in range(len(sticker[0])):
            # 붙일 수 없는가
            if sticker[st_x][st_y] and space[x + st_x][y + st_y]:
                return False

    return True


def paste(space: list, sticker: list, x: int, y: int) -> None:
    for st_x in range(len(sticker)):
        for st_y in range(len(sticker[0])):
            if sticker[st_x][st_y]:  # 스티커 붙임
                space[x + st_x][y + st_y] = True


def rotate(sticker: list, row: int, col: int) -> list:
    rotated_sticker = [[False] * row for _ in range(col)]
    for i in range(col):
        for j in range(row):
            rotated_sticker[i][j] = sticker[row - 1 - j][i]

    return rotated_sticker


if __name__ == "__main__":
    row, col, sticker_count = map(int, read().split())
    space = [[False] * col for _ in range(row)]  # 스티커 붙이는 공간

    for _ in range(sticker_count):  # 스티커 개수만큼 입력받음
        width, height = map(int, read().split())
        # 스티커는 2차원 boolean값으로 설정
        sticker = [
            list(map(lambda x: bool(int(x)), read().split())) for _ in range(width)
        ]
        for _ in range(4):  # 0, 90, 180, 270도 스티커 회전
            for x in range(row - width + 1):
                for y in range(col - height + 1):
                    if pastable(space, sticker, x, y):
                        paste(space, sticker, x, y)
                        break
                else:  # 붙이지 못했다면
                    continue
                break  # 붙였으므로 반복문 탈출, 다음 스티커 확인
            else:
                # 회전
                sticker = rotate(sticker, width, height)
                width, height = height, width
                continue
            break

    count = 0
    for line in space:
        count += line.count(True)
    print(count)
