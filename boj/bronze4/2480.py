#
#  2480번: 주사위 세개
#  https://www.acmicpc.net/problem/2480
#  Version: Python 3.9.10
#
#  Created by WhiteHyun on 2022/03/24.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number_list = list(map(int, read().split()))
    # 서로 같으면
    if number_list[0] == number_list[1] == number_list[2]:
        print(10000 + number_list[0] * 1000)
    elif number_list[0] == number_list[1]:
        print(1000 + number_list[0] * 100)
    elif number_list[1] == number_list[2]:
        print(1000 + number_list[1] * 100)
    elif number_list[0] == number_list[2]:
        print(1000 + number_list[2] * 100)
    else:
        print(100 * max(number_list))
