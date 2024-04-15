# 11724번: 연결 요소의 개수
# https://www.acmicpc.net/problem/11724
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    dfs_dict = {}
    vertex_count, edge_count = map(int, read().split())
    for i in range(1, vertex_count + 1):
        dfs_dict[i] = []  # 각 정점을 key값으로 하여 list 생성

    for _ in range(edge_count):
        # 정점1, 정점2
        v1, v2 = map(int, read().split())
        dfs_dict[v1].append(v2)
        dfs_dict[v2].append(v1)

    count = 0
    while dfs_dict:
        vertex = list(dfs_dict.keys())[0]
        stack = []
        stack.extend(dfs_dict[vertex])
        del dfs_dict[vertex]
        while stack:  # 스택이 빌 때까지 반복
            vertex = stack.pop()
            if vertex in dfs_dict:
                stack.extend(dfs_dict[vertex])
                del dfs_dict[vertex]
        count += 1
    print(count)
