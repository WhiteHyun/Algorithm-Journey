# 1764번: 듣보잡
# https://www.acmicpc.net/problem/1764
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    cant_hear_count, cant_see_count = map(int, read().split())
    cant_hear_list = sorted([read().rstrip() for _ in range(cant_hear_count)])
    cant_see_list = sorted([read().rstrip() for _ in range(cant_see_count)])
    i = 0
    answer_list = []
    count = 0

    # 보지도못한 것들의 이름으로 탐색
    for name in cant_see_list:

        # 듣지도 못한 이름이 보지도못한 이름보다 사전순으로 작으면 같거나 커질 때까지 넘김
        while i != cant_hear_count and cant_hear_list[i] < name:
            i += 1

        # 같으면 넣고 아니라면 보기라도 한 것이므로 넘어감
        if i != cant_hear_count and cant_hear_list[i] == name:
            answer_list.append(name)
            count += 1
            i += 1
    print(count)
    print("\n".join(answer_list))
