#
#  10950번: A+B - 3
#  https://www.acmicpc.net/problem/10950
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/15.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        print(sum(map(int, read().split())))
