#
#  2577번: 숫자의 개수
#  https://www.acmicpc.net/problem/2577
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2021/12/31.
#


from sys import stdin


read = stdin.readline

if __name__ == "__main__":
    mul_num = 1
    digit_list = [0] * 10
    for _ in range(3):
        mul_num *= int(read())

    while mul_num:
        digit_list[mul_num % 10] += 1
        mul_num //= 10

    for i in digit_list:
        print(i)
