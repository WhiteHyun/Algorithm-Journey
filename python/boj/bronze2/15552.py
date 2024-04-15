#
#  15552번: 빠른 A+B
#  https://www.acmicpc.net/problem/15552
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/14.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        print(sum(map(int, read().split())))
