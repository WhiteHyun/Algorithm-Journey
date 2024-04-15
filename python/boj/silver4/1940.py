#
#  1940번: 주몽
#  https://www.acmicpc.net/problem/1940
#  Version: Python 3.9.10
#
#  Created by WhiteHyun on 2022/03/17.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # count: 고유한 번호의 개수
    # goal: 만들고자 하는 두 번호의 합
    # materials: 고유한 번호 리스트
    # armor_count: 갑옷을 만들 수 있는 개수
    count = int(read())
    goal = int(read())
    materials = sorted(map(int, read().split()))
    armor_count = 0

    i = 0
    j = count - 1
    while i < j:
        if (sum_value := materials[i] + materials[j]) == goal:
            armor_count += 1
            i += 1
            j -= 1
        elif sum_value < goal:
            i += 1
        elif sum_value > goal:
            j -= 1

    print(armor_count)
