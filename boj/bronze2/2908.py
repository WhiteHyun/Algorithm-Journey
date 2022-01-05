#
#  2908번: 상수
#  https://www.acmicpc.net/problem/2908
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(max(map(lambda x: x[::-1], read().split()), key=int))
