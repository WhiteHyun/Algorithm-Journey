#
#  2579번: 계단 오르기
#  https://www.acmicpc.net/problem/2579
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/20.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    stairs = [int(read()) for _ in range(count)]
    dp = [0] * count
    dp[0] = stairs[0]
    if count > 1:
        dp[1] = stairs[0] + stairs[1]

    if count > 2:
        dp[2] = max(stairs[0], stairs[1]) + stairs[2]

    for i in range(3, count):
        dp[i] = max(dp[i - 3] + stairs[i - 1], dp[i - 2]) + stairs[i]
    print(dp[-1])
