#
#  2775번: 부녀회장이 될테야
#  https://www.acmicpc.net/problem/2775
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/20.
#


from sys import stdin

read = stdin.readline


if __name__ == "__main__":
    dp = [[0] * 14 for _ in range(15)]
    for i in range(14):
        dp[0][i] = i + 1

    for i in range(1, 15):
        dp[i][0] = 1
        for j in range(1, 14):
            dp[i][j] = dp[i - 1][j] + dp[i][j - 1]

    for _ in range(int(read())):
        k = int(read())
        n = int(read())
        print(dp[k][n - 1])
