#
#  1205번: 등수 구하기
#  https://www.acmicpc.net/problem/1205
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2021/12/17.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    score_list_count, person_score, rank_count = map(int, read().split())
    if not score_list_count:  # 아무도 랭킹리스트에 이름을 올리지 않은 경우
        print(1)
    else:
        score_list = list(map(int, read().split()))
        if score_list_count == rank_count and score_list[-1] >= person_score:
            print(-1)
        else:
            rank = 1
            for score in score_list:
                if score > person_score:
                    rank += 1

            print(rank)
