#
#  1546번: 평균
#  https://www.acmicpc.net/problem/1546
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/30.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    score_list = list(map(int, read().split()))
    max_score = max(score_list)
    print(sum(map(lambda x: x / max_score * 100, score_list)) / length)
