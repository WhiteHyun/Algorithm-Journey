#
#  10810번: 공 넣기
#  https://www.acmicpc.net/problem/10810
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/24.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    n, m = map(int, read().split())
    baskets = [0] * n
    for start, end, number in [map(int, read().split()) for _ in range(m)]:
        for i in range(start - 1, end):
            baskets[i] = number
    print(*baskets)
