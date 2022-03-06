#
#  포도주 시식
#  https://www.acmicpc.net/problem/2156
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    wine_list = [int(read()) for _ in range(count)]
    dp = [0] * count
    dp[0] = wine_list[0]
    if count > 1:
        dp[1] = wine_list[0] + wine_list[1]
    if count > 2:
        dp[2] = max(dp[0] + wine_list[2], dp[1], wine_list[1] + wine_list[2])
    for i in range(3, count):
        dp[i] = max(
            dp[i - 2] + wine_list[i],
            wine_list[i - 1] + dp[i - 3] + wine_list[i],
            dp[i - 1],
        )
    print(max(dp))
