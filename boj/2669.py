# 2669번: 직사각형 네개의 합집합의 면적 구하기
# https://www.acmicpc.net/problem/2669


END = 100
if __name__ == "__main__":

    # 좌표평면 100x100 생성
    coordinate_plane = [[0] * END for _ in range(END)]

    # 총 면적 변수
    area_count = 0

    # 총 네 줄의 입력을 받음
    for _ in range(4):
        start_x, start_y, end_x, end_y = map(
            lambda x: int(x) - 1, input().split())

        # 좌표평면에 사각형의 공간을 1로 채움
        for i in range(start_y, end_y):
            for j in range(start_x, end_x):
                coordinate_plane[i][j] = 1

    # 출력
    for i in coordinate_plane:
        area_count += i.count(1)
    print(area_count)
