#
#  쉬운 계단 수
#  https://www.acmicpc.net/problem/10844
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/03/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = int(read())
    dp = [0] * 101
    dp[1] = 9
    dp[2] = 8 * 2 + 1  # 17
    dp[3] = 6 * 4 + 3 + 3 + 2  # 32
    # 뭔가 dp[i-1]에 2를 곱한다음 i-1만큼 빼주는건가??
    for i in range(4, 101):
        dp[i] = (dp[i - 1] * 2 - i + 1) % 1000000000
    print(dp[number])
