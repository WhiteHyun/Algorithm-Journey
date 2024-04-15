#
#  2525번: 오븐 시계
#  https://www.acmicpc.net/problem/2525
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/19.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    hour, minute = map(int, read().split())
    minute += int(read())
    hour += minute // 60
    if hour >= 24:
        hour -= 24
    minute %= 60
    print(hour, minute)
