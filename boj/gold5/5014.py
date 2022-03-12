#
#  5014번: 스타트링크
#  https://www.acmicpc.net/problem/5014
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/03/12.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    building_height, current_location, destination, upto, downto = map(
        int, read().split()
    )
    # == BFS ==
    queue = deque([current_location])
    visited = [False] * (building_height + 1)
    visited[current_location] = True
    time = 0
    while queue:
        count = len(queue)
        for i in range(count):
            floor = queue.popleft()
            # 목적지에 도달하면 횟수 출력 후 반복문 탈출
            if floor == destination:
                print(time)
                break

            # 위
            if floor + upto <= building_height and not visited[floor + upto]:
                visited[floor + upto] = True
                queue.append(floor + upto)

            # 아래
            if floor - downto >= 1 and not visited[floor - downto]:
                visited[floor - downto] = True
                queue.append(floor - downto)
        else:
            time += 1
            continue
        break
    else:  # 반복문 탈출하지 못하고 큐가 비워졌다면, 목적지까지 엘리베이터로 가지 못함.
        print("use the stairs")
