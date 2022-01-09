#
#  1149번: RGB거리
#  https://www.acmicpc.net/problem/1149
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    RED = 0
    GREEN = 1
    BLUE = 2
    rgb_cost = [list(map(int, read().split())) for _ in range(length)]
    dp = [[0] * 3 for _ in range(length)]
    # 설명: dp[i][RED] -> i번째 집까지 칠할 때 비용의 최소값. 단 i번째 집은 빨강
    dp[0][RED] = rgb_cost[0][RED]
    dp[0][GREEN] = rgb_cost[0][GREEN]
    dp[0][BLUE] = rgb_cost[0][BLUE]
    for i in range(1, length):
        # dp[i][RED]는 i번째 집이 빨강이어야하므로 이전 집의 GREEN, BLUE일때의 최소비용을 참조
        dp[i][RED] = min(dp[i - 1][GREEN], dp[i - 1][BLUE]) + rgb_cost[i][RED]
        dp[i][GREEN] = min(dp[i - 1][RED], dp[i - 1][BLUE]) + rgb_cost[i][GREEN]
        dp[i][BLUE] = min(dp[i - 1][RED], dp[i - 1][GREEN]) + rgb_cost[i][BLUE]

    print(min(dp[-1]))
