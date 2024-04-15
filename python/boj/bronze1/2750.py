#
#  2750번: 수 정렬하기
#  https://www.acmicpc.net/problem/2750
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    numbers = []
    for _ in range(int(read())):
        numbers.append(int(read()))

    for i in sorted(numbers):
        print(i)

