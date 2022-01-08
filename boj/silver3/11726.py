#
#  11726번: 2×n 타일링
#  https://www.acmicpc.net/problem/11726
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    tiles_dp = [0] * length
    tiles_dp[0] = 1
    if length > 1:
        tiles_dp[1] = 2
    for i in range(2, length):
        tiles_dp[i] = tiles_dp[i - 1] + tiles_dp[i - 2]

    print(tiles_dp[-1] % 10007)

