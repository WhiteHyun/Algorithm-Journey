#
#  11729번: 하노이 탑 이동 순서
#  https://www.acmicpc.net/problem/11729
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/13.
#


from sys import stdin
from sys import setrecursionlimit

read = stdin.readline
# setrecursionlimit(10000)


def hanoi(start: int, arrive: int, circle: int):
    if circle == 1:
        print(start, arrive)
        return
    # 6은 1, 2, 3번 기둥의 합
    hanoi(start, 6 - start - arrive, circle - 1)
    print(start, arrive)
    hanoi(6 - start - arrive, arrive, circle - 1)


if __name__ == "__main__":
    circle_count = int(read())
    print((1 << circle_count) - 1)
    hanoi(1, 3, circle_count)
