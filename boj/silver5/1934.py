#
#  1934번: 최소공배수
#  https://www.acmicpc.net/problem/1934
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/15.
#


from math import lcm
from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        print(lcm(*map(int, read().split())))
