#
#  2606번: 바이러스
#  https://www.acmicpc.net/problem/2606
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    graph_dict = {}
    vertex_count = int(read())
    visited = [False] * (vertex_count + 1)
    # key값 = 정점(vertex)
    for i in range(1, vertex_count + 1):
        graph_dict[i] = []

    # 간선 연결
    for _ in range(int(read())):
        v1, v2 = map(int, read().split())
        graph_dict[v1].append(v2)
        graph_dict[v2].append(v1)

    # == BFS ==
    queue = deque([1])
    count = 0
    visited[1] = True
    while queue:
        for _ in range(len(queue)):
            v1 = queue.popleft()
            while graph_dict[v1]:
                v2 = graph_dict[v1].pop()
                if not visited[v2]:  # 방문하지 않은 정점이라면
                    visited[v2] = True  # 방문처리
                    queue.append(v2)
                    count += 1  # 컴퓨터 감염!
    print(count)
