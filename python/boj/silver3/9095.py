#
#  9095번: 1, 2, 3 더하기
#  https://www.acmicpc.net/problem/9095
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    dp = [0] * 11
    dp[1] = 1  # 1
    dp[2] = 2  # 1+1, 2
    dp[3] = 4  # 1+1+1, 1+2, 2+1, 3
    # 4: 7, 1+1+1+1, 1+1+2, 1+2+1, 2+1+1, 1+3, 3+1, 2+2
    # 5: 13, 1+1+1+1+1, 1+1+1+2, 1+1+2+1, 1+2+1+1, 2+1+1+1, 1+1+3, 1+3+1, 3+1+1, 1+2+2, 2+1+2, 2+2+1, 2+3, 3+2
    # 규칙: dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
    for i in range(4, 11):
        dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]

    for _ in range(int(read())):
        index = int(read())
        print(dp[index])
