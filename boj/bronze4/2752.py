#
#  2752번: 세수정렬
#  https://www.acmicpc.net/problem/2752
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/17.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print(*sorted(map(int, read().split())))
