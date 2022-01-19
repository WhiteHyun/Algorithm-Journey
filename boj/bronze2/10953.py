#
#  10953번: A+B - 6
#  https://www.acmicpc.net/problem/10953
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/19.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    test_case = int(read())
    for _ in range(test_case):
        print(sum(map(int, read().split(","))))
