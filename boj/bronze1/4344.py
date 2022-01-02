#
#  4344번: 평균은 넘겠지
#  https://www.acmicpc.net/problem/4344
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        count, *score_list = map(int, read().split())
        avg = sum(score_list) / count
        print(f"{len(tuple(filter(lambda x: x > avg, score_list))) / count * 100:.3f}%")
