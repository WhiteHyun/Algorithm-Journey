#
#  2475번: 검증수
#  https://www.acmicpc.net/problem/2475
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/16.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(sum(map(lambda x: x * x, map(int, read().split()))) % 10)
