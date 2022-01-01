#
#  2338번: 긴자리 계산
#  https://www.acmicpc.net/problem/2338
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = int(read()), int(read())
    print(a + b)
    print(a - b)
    print(a * b)

