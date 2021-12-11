# 1463번: 1로 만들기
# https://www.acmicpc.net/problem/1463
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = int(read())
    dp = [0] * (number + 1)
    if number > 1:
        dp[2] = 1
    if number > 2:
        dp[3] = 1

    for i in range(4, number + 1):
        if i % 6 == 0:  # 6으로 나누어 떨어진다면
            dp[i] = min(dp[i // 3], dp[i - 1], dp[i >> 1]) + 1
        elif i % 3 == 0:  # 3으로 나누어 떨어진다면
            dp[i] = min(dp[i // 3], dp[i - 1]) + 1
        elif i & 1 == 0:  # 2로 나누어 떨어진다면
            dp[i] = min(dp[i >> 1], dp[i - 1]) + 1
        else:  # 3과 2로 나누어 떨어지지 않는다면
            dp[i] = dp[i - 1] + 1

    print(dp[-1])
