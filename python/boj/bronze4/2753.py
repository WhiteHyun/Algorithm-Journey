#
#  2753번: 윤년
#  https://www.acmicpc.net/problem/2753
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/14.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(1 if not (y := int(read())) % 4 and y % 100 or not y % 400 else 0)
