#
#  11727번: 2×n 타일링 2
#  https://www.acmicpc.net/problem/11727
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/13.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    tile_count = int(read())
    dp = [0] * tile_count
    dp[0] = 1
    if tile_count > 1:
        dp[1] = 3
    if tile_count > 2:
        dp[2] = 5

    for i in range(3, tile_count):
        dp[i] = (dp[i - 1] + 2 * dp[i - 2]) % 10007
    print(dp[-1])
