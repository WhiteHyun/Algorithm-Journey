#
#  2440번: 별 찍기 - 3
#  https://www.acmicpc.net/problem/2440
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/01.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for i in range(int(read()), 0, -1):
        print("*" * i)
