#
#  11659번: 구간 합 구하기 4
#  https://www.acmicpc.net/problem/11659
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/09.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length, count = map(int, read().split())
    number_list = [*map(int, read().split())]
    dp = [0] * (length + 1)
    dp[1] = number_list[0]
    for i in range(2, length + 1):
        dp[i] = dp[i - 1] + number_list[i - 1]

    for _ in range(count):
        start, end = map(int, read().split())
        print(dp[end] - dp[start - 1])

