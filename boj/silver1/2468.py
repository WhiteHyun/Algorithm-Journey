#
#  2468번: 안전 영역
#  https://www.acmicpc.net/problem/2468
#  Version: Python 3.9.10
#
#  Created by WhiteHyun on 2022/03/17.
#


from sys import stdin
from collections import deque

read = stdin.readline
dx = (1, -1, 0, 0)
dy = (0, 0, 1, -1)


if __name__ == "__main__":
    size = int(read())
    regions = [list(map(int, read().split())) for _ in range(size)]
    max_count = 1

    # 지역에 대한 입력값중 최댓값을 찾아 1부터 최댓값 수 이하만큼 반복
    # 0이면 1, 지역의 최댓값이면 0이기 때문(그래서 max_count를 1로 설정)
    # 따라서 아래 반복문을 돌고 카운팅된 수가 더 크면 max_count에 재할당해준다.
    max_height = max(map(lambda x: max(x), regions))
    for rain_height in range(1, max_height):

        # queue: BFS를 돌 큐
        # visited: 방문 처리할 리스트, regions와 크기가 동일
        queue = deque()
        visited = [[False] * size for _ in range(size)]
        count = 0

        # 각 지역별 높이 확인
        for i in range(size):
            for j in range(size):
                # 방문한 곳 또는 이미 잠긴 곳이면 패스
                if visited[i][j] or regions[i][j] <= rain_height:
                    continue

                count += 1  # 잠기지 않은 지역을 찾았기에 횟수 1 추가

                # == BFS ==
                queue.append((i, j))
                visited[i][j] = True
                while queue:
                    length = len(queue)
                    for _ in range(length):
                        x, y = queue.popleft()

                        # 상하좌우 비교
                        for direction in range(4):
                            temp_x = x + dx[direction]
                            temp_y = y + dy[direction]

                            # 위치를 벗어난 경우
                            if (
                                temp_x < 0
                                or temp_y < 0
                                or temp_x >= size
                                or temp_y >= size
                            ):
                                continue

                            # 방문하지 않은 곳이면서 잠기지 않은 지역인 경우
                            if (
                                not visited[temp_x][temp_y]
                                and regions[temp_x][temp_y] > rain_height
                            ):
                                # 방문처리 후 큐에 삽입
                                visited[temp_x][temp_y] = True
                                queue.append((temp_x, temp_y))

        # 다 돌고나서 잠기지 않은 지역의 개수가 기존 값보다 큰 경우
        if max_count < count:
            max_count = count

    print(max_count)
