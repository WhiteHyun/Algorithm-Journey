#
#  2588번: 곱셈
#  https://www.acmicpc.net/problem/2588
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/01.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = int(read()), int(read())
    temp = 1
    value = 0
    while b != 0:
        temp_value = a * (b % 10)
        print(temp_value)
        value += temp_value * temp
        temp *= 10
        b //= 10
    print(value)

