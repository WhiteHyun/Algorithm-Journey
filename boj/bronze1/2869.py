#
#  2869번: 달팽이는 올라가고 싶다
#  https://www.acmicpc.net/problem/2869
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/15.
#


from sys import stdin
from math import ceil

read = stdin.readline

if __name__ == "__main__":
    climb_speed, slide_speed, stick_height = map(int, read().split())
    before_day = ceil((stick_height - climb_speed) / (climb_speed - slide_speed))
    if before_day + slide_speed >= stick_height:
        print(before_day)
    else:
        print(before_day + 1)
