#
#  11721번: 열 개씩 끊어 출력하기
#  https://www.acmicpc.net/problem/11721
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/12.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    sequence = read().rstrip()
    for i in range(len(sequence)):
        if i != 0 and i % 10 == 0:
            print()
        print(sequence[i], end="")
