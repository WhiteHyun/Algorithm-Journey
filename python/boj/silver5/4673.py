#
#  4673번: 셀프 넘버
#  https://www.acmicpc.net/problem/4673
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/01.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    self_number_list = [True] * 10001
    self_number_list[0] = False
    for i in range(1, 10001):
        temp_index = i
        generator = i
        while temp_index:  # i가 0이 될 때까지 반복
            generator += temp_index % 10
            temp_index //= 10
        if generator < 10001:
            self_number_list[generator] = False

        if self_number_list[i]:
            print(i)
