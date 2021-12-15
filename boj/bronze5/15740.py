#
#  15740번: A+B - 9
#  https://www.acmicpc.net/problem/15740
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/15.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(sum(map(int, read().split())))
