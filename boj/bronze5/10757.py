#
#  10757번: 큰 수 A+B
#  https://www.acmicpc.net/problem/10757
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/23.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(sum(map(int, read().split())))
