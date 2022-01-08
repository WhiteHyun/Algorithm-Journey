#
#  1193번: 분수찾기
#  https://www.acmicpc.net/problem/1193
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = int(read())
    i = 1
    while (sum_value := i * (i + 1) // 2) < number:
        i += 1
    value = sum_value - number

    print(f"{value+1}/{i-value}" if i & 1 == 1 else f"{i-value}/{value+1}")
