#
#  3009번: 네 번째 점
#  https://www.acmicpc.net/problem/3009
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/02/15.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    x = 0
    y = 0
    for _ in range(3):
        point = tuple(map(int, read().split()))
        x ^= point[0]
        y ^= point[1]
    print(x, y)
