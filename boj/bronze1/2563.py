#
#  2563번: 색종이
#  https://www.acmicpc.net/problem/2563
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    paper = [[False] * 100 for _ in range(100)]
    for _ in range(int(read())):
        row, col = map(int, read().split())
        for x in range(row, row + 10):
            for y in range(col, col + 10):
                paper[x][y] = True

    print(sum(map(lambda x: x.count(True), paper)))
