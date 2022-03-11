#
#  16485번: 작도하자! - ②
#  https://www.acmicpc.net/problem/16485
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/11.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    c, b = map(int, read().split())
    print(c / b)
