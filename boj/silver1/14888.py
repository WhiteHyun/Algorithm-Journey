#
#  14888번: 연산자 끼워넣기
#  https://www.acmicpc.net/problem/14888
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/03/10.
#


from sys import stdin
from sys import maxsize

read = stdin.readline


def back_tracking(index: int, value: int):
    global min_num
    global max_num
    if index == length - 1:
        if value < min_num:
            min_num = value
        if value > max_num:
            max_num = value
        return

    for i in range(4):
        if operator[i] > 0:
            operator[i] -= 1
            if i == 0:
                back_tracking(index + 1, value + sequence[index + 1])
            elif i == 1:
                back_tracking(index + 1, value - sequence[index + 1])
            elif i == 2:
                back_tracking(index + 1, value * sequence[index + 1])
            else:
                back_tracking(index + 1, int(value / sequence[index + 1]))
            operator[i] += 1


if __name__ == "__main__":
    length = int(read())
    sequence = list(map(int, read().split()))
    # 덧셈 뺄셈 곱셈 나눗셈
    operator = list(map(int, read().split()))
    min_num = maxsize
    max_num = -maxsize - 1
    back_tracking(0, sequence[0])
    print(max_num)
    print(min_num)
