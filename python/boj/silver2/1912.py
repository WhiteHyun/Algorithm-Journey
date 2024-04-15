#
#  1912번: 연속합
#  https://www.acmicpc.net/problem/1912
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/02/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())  # 숫자 리스트의 길이
    number_list = list(map(int, read().split()))  # 숫자 입력 받음
    dp = [0] * count  # dp 크기를 숫자 길이만큼 생성
    dp[0] = number_list[0]
    for i in range(1, count):
        dp[i] = max(number_list[i], number_list[i] + dp[i - 1])
    print(max(dp))
    print(dp)
