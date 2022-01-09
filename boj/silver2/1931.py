#
#  1931번: 회의실 배정
#  https://www.acmicpc.net/problem/1931
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/09.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    count = 1
    START = 0
    END = 1
    meeting_time = sorted(
        [tuple(map(int, read().split())) for _ in range(length)],
        key=lambda x: (x[1], x[0]),
    )
    meeting = meeting_time[0]
    for i in range(1, length):
        if meeting[END] <= meeting_time[i][START]:
            count += 1
            meeting = meeting_time[i]

    print(count)
