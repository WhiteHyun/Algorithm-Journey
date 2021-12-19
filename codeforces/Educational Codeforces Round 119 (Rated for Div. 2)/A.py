#
#  Equal or Not Equal
#  https://codeforces.com/contest/1620/problem/A
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/19.
#
from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        value = list(read().rstrip())
        count = 0
        for i in value:
            if i == "N":
                count += 1
        if count == 1:
            print("NO")
        else:
            print("YES")
