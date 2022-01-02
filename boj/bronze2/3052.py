#
#  3052번: 나머지
#  https://www.acmicpc.net/problem/3052
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(len({*[int(read()) % 42 for _ in range(10)]}))

