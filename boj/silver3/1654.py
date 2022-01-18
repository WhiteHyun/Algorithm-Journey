#
#  1654번: 랜선 자르기
#  https://www.acmicpc.net/problem/1654
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/18.
#


from sys import stdin

read = stdin.readline


def binary_search(cable_list: list, start_cable: int, end_cable: int) -> int:

    # 시작 랜선과 끝 랜선의 차가 다르면 그 이전 케이블이 최대 길이임
    if start_cable >= end_cable:
        return start_cable

    cable = (start_cable + end_cable + 1) // 2  # 중간 케이블
    count = 0
    for standard_cable in cable_list:
        count += standard_cable // cable

    # 필요한 랜선을 만든 경우
    if count >= need_cable_count:
        # 현재 랜선보다 큰 길이로 만들어봄
        return binary_search(cable_list, cable, end_cable)
    else:  # 못만들면 길이를 줄여서 만듦
        return binary_search(cable_list, start_cable, cable - 1)


if __name__ == "__main__":
    # got_cable_count: 이미 가지고 있는 랜선의 개수
    # need_cable_count: 필요한 랜선의 개수
    # cable_list: 여러 랜선의 길이
    got_cable_count, need_cable_count = map(int, read().split())
    cable_list = sorted([int(read()) for _ in range(got_cable_count)])
    longest_cable = cable_list[-1]
    print(binary_search(cable_list, 1, longest_cable))
