# 1260번: DFS와 BFS
# https://www.acmicpc.net/problem/1260


from sys import stdin
from collections import deque
from typing import Generator
input = stdin.readline


class DFS:

    def __init__(self, start_node: int, graph: dict) -> None:
        self.__stack = deque([start_node])
        self.graph = {}
        # 입력받은 값들(graph_dict)은 정렬되지 않은 상태
        for key in graph:
            # stack 이면서 가장 작은 것부터 방문해야 하기 때문에 역순으로 정렬
            self.graph[key] = deque(sorted(graph[key], reverse=True))

    def process(self) -> Generator:
        visit_node = deque()

        while self.__stack:
            node = self.__stack.pop()  # 스택에 있는 값을 팝
            if node in self.graph:  # 만약 해당 노드가 방문해야하는 노드가 있는 경우
                self.__stack.extend(self.graph[node])  # 스택에 저장
                del self.graph[node]  # 방문한 노드는 딕셔너리에서 삭제!
            if node not in visit_node:  # 이미 방문했었으면 그냥 넘어가고, 아니면 방문 노드에 넣어두자
                visit_node.append(node)

        yield from visit_node


class BFS:

    def __init__(self, start_node: int, graph: dict) -> None:
        self.__queue = deque([start_node])
        self.graph = {}
        # 입력받은 값들(graph_dict)은 정렬되지 않은 상태
        for key in graph:
            self.graph[key] = deque(sorted(graph[key]))

    def process(self) -> Generator:
        visit_node = deque()

        while self.__queue:
            node = self.__queue.popleft()  # queue에 있는 노드를 팝
            if node in self.graph:  # 노드에서 방문해야되는 노드가 있을 때
                self.__queue.extend(self.graph[node])  # 방문해야할 노드들을 큐에 저장
                del self.graph[node]  # 방금 방문한 노드는 딕셔너리에서 삭제!

            if node not in visit_node:  # 만약 방금 방문한 노드가 첫 방문이면 방문노드 큐에 넣어줌
                visit_node.append(node)

        yield from visit_node


def graph_input(count: int) -> dict:
    graph_dict = {}
    for _ in range(count):
        node1, node2 = map(int, input().split())  # 간선 간의 관계를 입력받음, 서로 양방향.
        if node1 not in graph_dict:  # dict에 해당 노드가 없을 경우
            # 노드를 키값으로 하여 다른 노드와의 연결고리를 deque로 만듦
            graph_dict[node1] = deque([node2])
        else:
            graph_dict[node1].append(node2)  # 이미 존재한다면 deque에 node 추가

        if node2 not in graph_dict:  # 위에랑 마찬가지!
            graph_dict[node2] = deque([node1])
        else:
            graph_dict[node2].append(node1)

    return graph_dict


if __name__ == "__main__":
    # length: 정점의 길이
    # count: 간선의 개수, 해당 수만큼 반복해서 간선을 입력받는다.
    # start_node: 첫 시작 노드
    length, count, start_node = map(int, input().split())

    graph_dict = graph_input(count)

    dfs = DFS(start_node, graph_dict)
    bfs = BFS(start_node, graph_dict)

    for node in dfs.process():
        print(node, end=" ")
    print()
    for node in bfs.process():
        print(node, end=" ")
    print()
