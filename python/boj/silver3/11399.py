#
#  11399번: ATM
#  https://www.acmicpc.net/problem/11399
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    count = 0
    spend_time = sorted(map(int, read().split()))
    for i in range(length):
        count += spend_time[i] * (length - i)
    print(count)
