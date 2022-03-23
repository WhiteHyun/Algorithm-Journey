#
#  2490번: 윷놀이
#  https://www.acmicpc.net/problem/2490
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/20.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    yut = ["E", "A", "B", "C", "D"]
    for _ in range(3):
        print(yut[read().split().count("0")])
