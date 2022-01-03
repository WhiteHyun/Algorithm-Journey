#
#  2193번: 이친수
#  https://www.acmicpc.net/problem/2193
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/03.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # 1 1 2 3 5 8
    # 1 10 100 101 1000 1001 1010 10000 10001 10010 10100 10101
    # 100000 100001 100010 100100 100101 101000 101001 101010
    n = [1] * 91
    for i in range(3, 91):
        n[i] = n[i - 1] + n[i - 2]
    print(n[int(read())])

