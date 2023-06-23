#
#  가장 먼 노드
#  https://school.programmers.co.kr/learn/courses/30/lessons/49189
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/23.
#


from collections import deque


def solution(n, edges):
    graph = [[] for _ in range(n)]
    node_per_distance = {}
    # 각 정점(vertex)에 연결
    for edge in edges:
        graph[edge[0] - 1].append(edge[1] - 1)
        graph[edge[1] - 1].append(edge[0] - 1)

    queue = deque([0])
    count = 0
    visited = [False] * n
    visited[0] = True

    while queue:
        length = len(queue)
        for _ in range(length):
            node = queue.popleft()
            for vertex in graph[node]:
                if not visited[vertex]:
                    visited[vertex] = True
                    queue.append(vertex)
                    node_per_distance[count] = node_per_distance.get(count, set())
                    node_per_distance[count].add(vertex)
        count += 1
    return len(node_per_distance[sorted(node_per_distance)[-1]])
