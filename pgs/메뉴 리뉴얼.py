#
#  메뉴 리뉴얼
#  https://school.programmers.co.kr/learn/courses/30/lessons/72411
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/16.
#

from itertools import combinations


def solution(orders, course):
    dictionary = {}
    for i in range(2, 11):
        dictionary[i] = {}

    for order in orders:
        for i in range(2, len(order) + 1):
            for value in combinations(sorted(order), i):
                connected_string = "".join(value)
                if dictionary[i].get(connected_string) is None:
                    dictionary[i][connected_string] = 0
                dictionary[i][connected_string] += 1

    answer = []
    for i in course:
        sorted_list = sorted(dictionary[i].items(), key=lambda x: -x[1])
        if not sorted_list:
            continue

        if sorted_list[0][1] == 1:
            continue

        max_count = sorted_list[0][1]

        for key, value in sorted_list:
            if value != max_count:
                break
            answer.append(key)

    return sorted(answer)
