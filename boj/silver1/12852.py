#
#  12852번: 1로 만들기 2
#  https://www.acmicpc.net/problem/12852
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/09.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    number = int(read())
    visited = set()
    queue = deque([(number, [number])])
    while queue:
        temp_number, path = queue.popleft()

        # 1을 가장 빨리 도달했는가
        if temp_number == 1:
            print(len(path) - 1)
            print(*path)
            break

        # 이미 방문했다면
        if temp_number in visited:
            continue

        visited.add(temp_number)

        if temp_number % 3 == 0:
            queue.append([temp_number // 3, path + [temp_number // 3]])

        if temp_number & 1 == 0:
            queue.append([temp_number >> 1, path + [temp_number >> 1]])

        queue.append([temp_number - 1, path + [temp_number - 1]])
