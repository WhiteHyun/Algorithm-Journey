#
#  2748번: 피보나치 수 2
#  https://www.acmicpc.net/problem/2748
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline


def fibonacci(n: int) -> int:
    if n == 1:
        return 1
    elif n == 0:
        return 0
    elif dp[n] != 0:
        return dp[n]
    else:
        dp[n] = fibonacci(n - 1) + fibonacci(n - 2)
        return dp[n]


if __name__ == "__main__":
    length = int(read())
    dp = [0] * (length + 1)
    dp[1] = 1
    print(fibonacci(length))
