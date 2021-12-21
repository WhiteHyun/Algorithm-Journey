#
#  A. Square String?
#  https://codeforces.com/contest/1619/problem/A
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/20.
#

from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        string = read().rstrip()
        mid = len(string) >> 1
        if string[:mid] == string[mid:]:
            print("YES")
        else:
            print("NO")
