#
#  23844번: 트리 정리하기
#  https://www.acmicpc.net/problem/23844
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/18.
#


from sys import stdin
from collections import deque

read = stdin.readline
graph_dict = {1: []}  # 노드간 관계


if __name__ == "__main__":
    node_size, limit_node_count = map(int, read().split())
    temp_queue = deque()

    # 입력받는 구간
    for _ in range(node_size - 1):
        node1, node2 = map(int, read().split())
        if node1 == 1:
            graph_dict[node1].append(node2)
            graph_dict[node2] = []
        elif node2 == 1:
            graph_dict[node2].append(node1)
            graph_dict[node1] = []
        else:
            temp_queue.append((node1, node2))
        # 그래프 부모 관계 설정
        temp_list = []
        while temp_queue:
            node1, node2 = temp_queue.pop()
            if node1 in graph_dict:
                graph_dict[node1].append(node2)
                graph_dict[node2] = []
            elif node2 in graph_dict:
                graph_dict[node2].append(node1)
                graph_dict[node1] = []
            else:
                temp_list.append((node1, node2))
        temp_queue.extend(temp_list)

    temp_queue.extend(graph_dict[1])
    count = 1

    while temp_queue:  # BFS - queue
        if len(temp_queue) > limit_node_count:
            # 노드간 DFS로 개수 셈
            node_count_list = [0] * len(temp_queue)
            for index, node in enumerate(temp_queue):
                temp_stack = [node]
                while temp_stack:
                    temp_node = temp_stack.pop()
                    temp_stack.extend(graph_dict[temp_node])
                    node_count_list[index] += 1
            # print(f"remove = {temp_queue[node_count_list.index(min(node_count_list))]}")
            temp_queue.remove(temp_queue[node_count_list.index(min(node_count_list))])
        # print(f"{temp_queue=}")
        count += len(temp_queue)

        temp_list = []  # BFS setting
        for node in temp_queue:
            temp_list.extend(graph_dict[node])

        temp_queue = deque(temp_list)

    print(count)
