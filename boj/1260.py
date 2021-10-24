# 1260번: DFS와 BFS
# https://www.acmicpc.net/problem/1260


if __name__ == "__main__":
    length, count, start_node = map(int, input().split())

    graph_dict = {}
    for i in range(count):
        node1, node2 = map(int, input().split())
        if node1 not in graph_dict:
            graph_dict[node1] = [node2]
        else:
            graph_dict[node1].append(node2)

        if node2 not in graph_dict:
            graph_dict[node2] = [node1]
        else:
            graph_dict[node2].append(node1)

    bfs = {}
    dfs = {}

    for key in graph_dict:
        # stack에서 가장 낮은 수부터 방문하기 위함
        dfs[key] = sorted(graph_dict[key], reverse=True)
        bfs[key] = sorted(graph_dict[key])  # queue에서 가장 낮은 수부터 방문하기 위함

    """
    ex)
    4 5 1
    1 2
    1 3
    1 4
    2 4
    3 4

    bfs = {
        1: [2, 3, 4],
        2: [1, 4],
        3: [1, 4],
        4: [1, 2, 3]
        }

    설명: bfs의 시작노드가 1이면 1의 value값인 [2, 3, 4]를 큐에 그대로 저장한다.
    그리고 해당 key인 `1`을 dictionary상에서 삭제하고 출력리스트에 append한다.
    큐는 FIFO 이므로 꺼낸다면 `2`를 꺼내게 될 것이고, 2에 있는 [1, 4]를 그대로 큐에 또 저장하고 key가 `2`인 것들을 삭제한다.
    그러면 현재 큐는 [3, 4, 1, 4]가 되고 남은 bfs 값은
    {3: [1, 4], 4: [1, 2, 3]}이 된다.
    이 때 출력할 노드 리스트는 [1, 2]가 된다.
    이렇게 bfs dictionary에 있는 값들을 큐에 저장하면서 반복하다가 팝한 노드값이 bfs에 없다면 이미 방문한 노드이기 때문에 그대로 넘어간다.

    dfs = {
        1: [4, 3, 2],
        2: [4, 1],
        3: [4, 1],
        4: [3, 2, 1]
    }

    설명: dfs의 시작노드가 1이면 1의 value값인 [4, 3, 2]를 스택에 그대로 저장한다.
    그리고 해당 key인 `1`을 dictionary상에서 삭제하고 출력리스트에 append한다.
    스택은 FILO 이므로 꺼낸다면 `2`를 꺼내게 될 것이고, 2에 있는 [4, 1]를 그대로 스택에 또 저장하고 key가 `2`인 것들을 삭제한다.
    그러면 현재 스택은 [3, 2, 4, 1]이 되고 남은 dfs 값은
    {3: [4, 1], 4: [3, 2, 1]}이 된다.
    이 때 출력할 노드 리스트는 [1, 2]가 된다.
    이렇게 dfs dictionary에 있는 값들을 스택에 저장하면서 반복하다가 팝한 노드값이 dfs에 없다면 이미 방문한 노드이기 때문에 그대로 넘어간다.
    
    """

    # dfs
    dfs_node = []
    dfs_stack = [start_node]
    while dfs_stack:
        node = dfs_stack.pop()
        if node in dfs:
            dfs_stack.extend(dfs[node])
            del dfs[node]
            dfs_node.append(node)

    # bfs
    bfs_node = []
    bfs_stack = [start_node]
    while bfs_stack:
        node = bfs_stack.pop(0)
        if node in bfs:
            bfs_stack.extend(bfs[node])
            del bfs[node]
            bfs_node.append(node)

    for node in dfs_node:
        print(node, end=" ")
    print()

    for node in bfs_node:
        print(node, end=" ")
    print()
