# 20364번: 부동산 다툼
# https://www.acmicpc.net/problem/20364

from sys import stdin

if __name__ == "__main__":
    # g_count: 땅 개수 (ground count)
    # d_count: 오리 수 (duck count)
    g_count, d_count = map(int, stdin.readline().split())

    # 트리에서 0은 사용 안하기 때문에 +1 하여 만듬
    tree = [True]*(g_count+1)

    # 오리의 수만큼 반복
    for _ in range(d_count):
        node = int(stdin.readline())  # 우리 오리는 어디로 가고싶으신가?
        temp_node = node
        owned_node = 0  # 막힌 노드를 저장하는 변수
        while temp_node != 1:  # 자기가 선택한 노드에서 루트노드로 돌아오면서 점유된 노드 체크
            if not tree[temp_node]:  # 만약 점유되어있는 노드를 발견했다면
                owned_node = temp_node
            temp_node >>= 1  # 부모 노드로 이동

        # 점유된 노드가 없다면
        if owned_node == 0:
            print(0)
            tree[node] = False  # 자신이 원하는 곳을 점유했다고 못박는다!
        else:  # 점유된 곳이 있다면
            print(owned_node)
