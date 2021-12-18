#
#  23841번: 데칼코마니
#  https://www.acmicpc.net/problem/23841
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/18.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    row, col = map(int, read().split())
    paint = [list(read().rstrip()) for _ in range(row)]
    for line in paint:
        index = -1
        for i in range(col >> 1):
            if line[i] == ".":
                line[i] = line[index]
            else:
                line[index] = line[i]
            index -= 1
    for line in paint:
        print("".join(line))
