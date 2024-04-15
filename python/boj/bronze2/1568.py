#
#  1568번: 새
#  https://www.acmicpc.net/problem/1568
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/13.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = int(read())

    i = 1
    temp = number
    time = 0
    while temp != 0:
        time += 1
        temp -= i
        i += 1
        if temp - i < 0:
            i = 1

    print(time)

