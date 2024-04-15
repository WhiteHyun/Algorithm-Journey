#
#  A. Robot Cleaner
#  https://codeforces.com/contest/1623/problem/A
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/28.
#

from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        n, m, r_b, c_b, rd, cd = map(int, read().split())
        timeout = 0
        dr = dc = 1
        while True:
            if r_b == rd or c_b == cd:
                break
            if r_b + dr > n or r_b + dr < 1:
                dr = -1
            if c_b + dc > m or c_b + dc < 1:
                dc = -1
            r_b += dr
            c_b += dc
            timeout += 1
        print(timeout)
