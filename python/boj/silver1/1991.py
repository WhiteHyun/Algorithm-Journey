#
#  1991번: 트리 순회
#  https://www.acmicpc.net/problem/1991
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/16.
#


from sys import stdin

read = stdin.readline


def cycle(direction: int, node: str):

    if node == ".":
        return

    childs = tree[node]

    if direction == 0:  # 전위순회이면
        print(node, end="")
        cycle(direction, childs[0])
        cycle(direction, childs[1])

    elif direction == 1:  # 중위순회이면
        cycle(direction, childs[0])
        print(node, end="")
        cycle(direction, childs[1])
    elif direction == 2:  # 후위순회이면
        cycle(direction, childs[0])
        cycle(direction, childs[1])
        print(node, end="")


if __name__ == "__main__":
    tree = {}
    for _ in range(int(read())):
        node, *childs = read().split()
        tree[node] = childs

    for i in range(3):
        cycle(i, "A")
        print()
