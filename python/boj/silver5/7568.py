#
#  7568번: 덩치
#  https://www.acmicpc.net/problem/7568
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/13.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    bodies = [list(map(int, read().split())) for _ in range(count)]
    rank_list = [count] * count
    for i in range(count):
        for j in range(count):
            if i == j or bodies[i][0] < bodies[j][0] and bodies[i][1] < bodies[j][1]:
                continue
            rank_list[i] -= 1

    print(*rank_list)
