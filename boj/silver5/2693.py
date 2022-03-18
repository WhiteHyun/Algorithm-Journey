#
#  2693번: N번째 큰 수
#  https://www.acmicpc.net/problem/2693
#  Version: Python 3.9.10
#
#  Created by WhiteHyun on 2022/03/18.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        print(sorted(map(int, read().split()))[-3])
