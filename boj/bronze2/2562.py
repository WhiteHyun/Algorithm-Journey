#
#  2562번: 최댓값
#  https://www.acmicpc.net/problem/2562
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/28.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    sequence = [int(read()) for _ in range(9)]
    index = 1
    value = sequence[0]
    for i, v in enumerate(sequence[1:]):
        if value < v:
            index = i + 2
            value = v
    print(value)
    print(index)
