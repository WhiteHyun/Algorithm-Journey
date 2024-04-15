#
#  23842번: 성냥개비
#  https://www.acmicpc.net/problem/23842
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/18.
#


from sys import stdin

read = stdin.readline


def back_tracking(index: int, count: int):
    if index == 6:
        if (
            count == stick_count
            and n[0] * 10 + n[1] + n[2] * 10 + n[3] == n[4] * 10 + n[5]
        ):
            print(f"{n[0]}{n[1]}+{n[2]}{n[3]}={n[4]}{n[5]}")
            return True
        else:
            return False

    for i in range(10):
        n[index] = i
        if back_tracking(index + 1, count + number_dict[i]):
            return True


if __name__ == "__main__":
    read = stdin.readline
    number_dict = {1: 2, 2: 5, 3: 5, 4: 4, 5: 5, 6: 6, 7: 3, 8: 7, 9: 6, 0: 6}
    stick_count = int(read()) - 4
    n = [0] * 6

    if not back_tracking(0, 0):
        print("impossible")

