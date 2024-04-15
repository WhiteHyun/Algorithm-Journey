#
#  2445번: 별 찍기 - 8
#  https://www.acmicpc.net/problem/2445
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/21.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    star_list = [" "] * (count * 2)
    for i in range(count):
        star_list[i] = "*"
        star_list[count * 2 - i - 1] = "*"
        print("".join(star_list))
    for i in range(count - 1, 0, -1):
        star_list[i] = " "
        star_list[count * 2 - i - 1] = " "
        print("".join(star_list))
