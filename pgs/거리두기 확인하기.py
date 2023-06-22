#
#  거리두기 확인하기
#  https://school.programmers.co.kr/learn/courses/30/lessons/81302
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/22.
#


def find_people(place: list) -> list:
    """
    사람의 위치를 찾아 (x, y) 배열로 리턴합니다.
    """
    index_list = []
    for i in range(5):
        for j in range(5):
            if place[i][j] == "P":
                index_list.append((i, j))
    return index_list


def social_distancing(place: list, peoples: list) -> bool:
    visited = [[False] * 5 for _ in range(5)]
    stack = []
    # 파티션은 미리 방문처리
    for i in range(5):
        for j in range(5):
            visited[i][j] = place[i][j] == "X"

    # == dfs settings ==
    # 상하좌우
    dx = [-1, 1, 0, 0]
    dy = [0, 0, -1, 1]

    # 각 사람마다 맨해튼 거리까지 탐색
    for person in peoples:
        x, y = person
        visited[x][y] = True
        stack.append((x, y, 0))

        def dfs(x, y, distance):
            if distance > 2:
                return

        # 큐가 빌 때 까지 반복
        while stack:
            x, y, distance = stack.pop()
            if distance > 2:
                continue

            if place[x][y] == "P" and distance != 0:
                return False

            for i in range(4):  # 상하좌우 처리
                move_x = x + dx[i]
                move_y = y + dy[i]
                # index out of range
                if move_x < 0 or move_x > 4 or move_y < 0 or move_y > 4:
                    continue
                if not visited[move_x][move_y]:
                    visited[move_x][move_y] = True
                    stack.append((move_x, move_y, distance + 1))  # 거리 1 추가

    return True


def solution(places: list) -> list:
    answer = []
    for place in places:
        matrix = list(map(list, place))

        # find people
        people_indexes = find_people(matrix)

        # 사람이 없으면 거리두기 지키기 표시
        if not people_indexes:
            answer.append(1)
            continue

        answer.append(int(social_distancing(matrix, people_indexes)))

    return answer
