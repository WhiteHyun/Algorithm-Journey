#
#  10870번: 피보나치 수 5
#  https://www.acmicpc.net/problem/10870
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/14.
#


from sys import stdin

read = stdin.readline
dp = [0] * 21


def fibonacci(number: int):
    if number == 0:
        return 0
    elif number == 1:
        return 1
    elif dp[number - 1] != 0 and dp[number - 2] != 0:
        return dp[number - 1] + dp[number - 2]
    dp[number] = fibonacci(number - 1) + fibonacci(number - 2)
    return dp[number]


if __name__ == "__main__":
    number = int(read())
    dp[1] = 1
    print(fibonacci(number))
