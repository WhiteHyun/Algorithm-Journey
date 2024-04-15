#
#  6603번: 로또
#  https://www.acmicpc.net/problem/6603
#  Version: Python 3.9.10
#
#  Created by WhiteHyun on 2022/03/14.
#


from sys import stdin

read = stdin.readline


def back_tracking(start: int, index: int):
    if index == 6:
        print(*lotto_list)
        return

    for i in range(start, length):
        lotto_list[index] = sequence[i]
        back_tracking(i + 1, index + 1)


if __name__ == "__main__":
    while (value := read()) != "0\n":
        length, *sequence = list(map(int, value.split()))
        lotto_list = [0] * 6
        back_tracking(0, 0)
        print()
