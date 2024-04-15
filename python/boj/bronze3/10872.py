#
#  10872번: 팩토리얼
#  https://www.acmicpc.net/problem/10872
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/14.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = 1
    for i in range(2, int(read()) + 1):
        count *= i
    print(count)
