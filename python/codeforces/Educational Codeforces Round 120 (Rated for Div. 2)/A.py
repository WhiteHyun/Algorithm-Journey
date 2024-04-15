#
#  Construct a Rectangle
#  https://codeforces.com/contest/1622/problem/0
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/27.
#
from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        sticks = sorted(map(int, read().split()))
        if sticks[0] + sticks[1] == sticks[2]:
            print("YES")
        elif sticks[0] == sticks[1] and sticks[2] & 1 == 0:
            print("YES")
        elif sticks[1] == sticks[2] and sticks[0] & 1 == 0:
            print("YES")
        else:
            print("NO")
