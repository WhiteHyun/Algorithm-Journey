#
#  2798번: 블랙잭
#  https://www.acmicpc.net/problem/2798
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count, shout_number = map(int, read().split())
    number_list = list(map(int, read().split()))
    near_number = 0
    for i in range(count - 2):
        for j in range(i + 1, count - 1):
            for k in range(j + 1, count):
                if (
                    value := number_list[i] + number_list[j] + number_list[k]
                ) <= shout_number and near_number < value:
                    near_number = value
    print(near_number)

