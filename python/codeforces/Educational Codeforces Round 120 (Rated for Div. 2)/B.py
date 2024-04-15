#
#  Berland Music
#  https://codeforces.com/contest/1622/problem/B
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/27.
#
from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        number_of_songs = int(read())
        sequence = list(map(int, read().split()))
        score_list = list(map(int, list(read().rstrip())))
        temp = [(sequence[i], score_list[i], i) for i in range(number_of_songs)]
        index_list = list(map(lambda x: x[2], sorted(temp, key=lambda x: (x[1], x[0]))))

        for i in range(1, number_of_songs + 1):
            score_list[index_list[i - 1]] = i

        print(*score_list)
