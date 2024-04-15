#
#  23844번: 트리 정리하기
#  https://www.acmicpc.net/problem/23844
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/18.
#


from sys import stdin, setrecursionlimit

read = stdin.readline
setrecursionlimit(100000)


def dfs(node: int, level: int):
    if level_count[level] < limit_count:
        level_count[level] += 1

    for child_node in graph_list[node]:
        if not visited[child_node]:
            visited[child_node] = True
            dfs(child_node, level + 1)


if __name__ == "__main__":
    node_count, limit_count = map(int, read().split())
    graph_list = [[] for _ in range(node_count + 1)]  # 1부터 노드 개수까지의 번호가 있음.
    level_count = [0] * node_count
    visited = [False] * (node_count + 1)  # 방문 노드 처리

    # n-1만큼 입력을 받음
    for _ in range(node_count - 1):
        node1, node2 = map(int, read().split())
        graph_list[node1].append(node2)
        graph_list[node2].append(node1)

    # == DFS ==
    visited[1] = True
    dfs(1, 0)

    print(sum(level_count))
