# 1068번: 트리
# https://www.acmicpc.net/problem/1068


if __name__ == "__main__":
    DELETED = -2
    input()
    tree = list(map(int, input().split()))
    stack = []
    stack.append(int(input()))

    # DFS로 부모 노드 -> 자식 노드 제거
    while stack:
        parent_node = stack.pop()
        tree[parent_node] = DELETED

        for i in range(len(tree)):
            if tree[i] == parent_node:
                stack.append(i)

    # 리프 노드 카운트
    leaf_count = 0
    for i in range(len(tree)):
        if tree[i] != DELETED and i not in tree:
            leaf_count += 1

    print(leaf_count)
