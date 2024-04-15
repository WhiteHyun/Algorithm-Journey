#
#  11720번: 숫자의 합
#  https://www.acmicpc.net/problem/11720
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/03.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    read()
    print(sum(map(int, list(read().rstrip()))))
