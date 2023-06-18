#
#  양궁대회
#  https://school.programmers.co.kr/learn/courses/30/lessons/92342
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/18.
#


from itertools import combinations


def solution(n: int, info: list) -> list:
    if [1] * n + [0] * (len(info) - n) == info:
        return [-1]

    max_count = 0
    answer = []

    for i in range(1, 11):
        for indexes in combinations(range(0, 11), i):
            remaining_arrows = n
            index_list = sorted(indexes, reverse=True)
            result = [0] * 11  # info's length = 11
            while index_list:
                index = index_list.pop()
                result[index] = info[index] + 1
                remaining_arrows -= info[index] + 1
                if remaining_arrows < 0:
                    result[index] += remaining_arrows
                    remaining_arrows = 0
                    break
            # 이미 정답과 같은 배열이거나 남은 화살 수가 0이 아니라면
            # 다른 경우의 수를 확인
            if remaining_arrows != 0 or answer == result:
                continue

            # 점수 정산하기
            apeach_score = 0
            lion_score = 0
            for i in range(10):
                if info[i] == 0 and result[i] == 0:
                    continue
                elif info[i] < result[i]:
                    lion_score += 10 - i
                else:
                    apeach_score += 10 - i

            # 점수가 어피치가 더 높으면 다른 경우의 수를 확인하기
            if apeach_score >= lion_score:
                continue

            if (diff := (lion_score - apeach_score)) > max_count:
                max_count = lion_score - apeach_score
                answer = result
            elif diff == max_count:
                # 낮은 점수 빈도수 확인
                for i in range(10, -1, -1):
                    if result[i] == answer[i]:
                        continue
                    elif result[i] < answer[i]:
                        break
                    answer = result
                    break
    return answer
