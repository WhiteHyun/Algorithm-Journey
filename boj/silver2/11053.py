#
#  11053번: 가장 긴 증가하는 부분 수열
#  https://www.acmicpc.net/problem/11053
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/02/12.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    number_list = list(map(int, read().split()))
    dp = [1] * count

    for i in range(1, count):
        for j in range(i):
            if dp[j] >= dp[i] and number_list[j] < number_list[i]:
                dp[i] = dp[j] + 1
    print(max(dp))

"""
6
10 20 10 30 20 50
"""
