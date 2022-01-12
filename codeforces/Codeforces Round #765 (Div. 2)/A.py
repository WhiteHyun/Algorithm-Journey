#
#  A. Ancient Civilization
#  https://codeforces.com/contest/1625/problem/A
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/12.
#

from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        n, l = map(int, read().split())
        binary_list = [0] * 32
        for x in map(int, read().split()):
            for j in range(l - 1, -1, -1):
                if x & 1:
                    binary_list[j] += 1
                else:
                    binary_list[j] -= 1
                x >>= 1

        result = 0
        for i in range(l):
            result <<= 1
            if binary_list[i] > 0:
                result += 1
        print(result)

