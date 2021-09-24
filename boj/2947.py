# 2947번: 나무 조각
# https://www.acmicpc.net/problem/2947

if __name__ == "__main__":
    tree_list = list(map(int, input().split()))
    for _ in range(len(tree_list)-1):
        for j in range(len(tree_list)-1):
            if tree_list[j] > tree_list[j+1]:
                tree_list[j], tree_list[j+1] = tree_list[j+1], tree_list[j]
                print(" ".join(list(map(str, tree_list))))
