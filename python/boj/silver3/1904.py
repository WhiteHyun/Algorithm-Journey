#
#  1904번: 01타일
#  https://www.acmicpc.net/problem/1904
#  Version: Python 3.9.10
#
#  Created by WhiteHyun on 2022/03/15.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    dp = [0] * count
    dp[0] = 1
    if count > 1:
        dp[1] = 2
    for i in range(2, count):
        dp[i] = (dp[i - 1] + dp[i - 2]) % 15746
    print(dp[-1])
