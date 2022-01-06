#
#  2751번: 수 정렬하기 2
#  https://www.acmicpc.net/problem/2751
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    numbers = sorted([int(read()) for _ in range(length)])
    for number in numbers:
        print(number)

