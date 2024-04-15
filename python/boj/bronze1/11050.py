#
#  11050번: 이항 계수 1
#  https://www.acmicpc.net/problem/11050
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/02/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    n, k = map(int, read().split())
    k = min(k, n - k)

    numerator = 1  # 분자
    denominator = 1  # 분모
    for i in range(n, n - k, -1):
        numerator *= i

    for i in range(k, 0, -1):
        denominator *= i

    print(numerator // denominator)
