#
#  16212번: 정열적인 정렬
#  https://www.acmicpc.net/problem/16212
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    read()
    print(*sorted(map(int, read().split())))
