# 14719번: 빗물
# https://www.acmicpc.net/problem/14719
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    row, col = map(int, read().split())
    rain_water = list(map(int, read().split()))
    volumn = 0
    for i in range(1, len(rain_water) - 1):
        left_height = max(rain_water[:i])  # 왼쪽에서 가장 높은 블록
        right_height = max(rain_water[i + 1 :])  # 오른쪽에서 가장 높은 블록
        min_height = min(left_height, right_height)  # 왼쪽과 오른쪽중에서 가장 낮은 블록
        if min_height > rain_water[i]:  # 위치된 곳이 빗물에 고일 수 없는 높이일 때
            volumn += min_height - rain_water[i]
    print(volumn)
