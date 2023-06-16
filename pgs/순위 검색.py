#
#  순위 검색
#  https://school.programmers.co.kr/learn/courses/30/lessons/72412
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/15.
#


def solution(info: list, queries: list) -> list:
    id_dict = {
        "-": 0,
        "cpp": 1,
        "java": 2,
        "python": 3,
        "backend": 1,
        "frontend": 2,
        "junior": 1,
        "senior": 2,
        "chicken": 1,
        "pizza": 2,
    }
    all_cases_list = [[] for _ in range(108)]

    for element in info:
        language, job, career, soul_food, score = element.split()
        indexes = (
            id_dict[language] * 27,
            id_dict[job] * 9,
            id_dict[career] * 3,
            id_dict[soul_food],
        )
        score = int(score)

        for i in range(16):
            index = 0
            for j in range(4):
                if i & (1 << j):
                    index += indexes[j]
            all_cases_list[index].append(score)

    for i in range(108):
        all_cases_list[i] = sorted(all_cases_list[i])
    answer = []

    for query in queries:
        filtered_list = query.split(" and ")
        filtered_list.extend(filtered_list.pop().split())
        language, job, career, soul_food, score = filtered_list
        target_list = all_cases_list[
            id_dict[language] * 27
            + id_dict[job] * 9
            + id_dict[career] * 3
            + id_dict[soul_food]
        ]
        integer_score = int(score)

        # binary search
        start = 0
        end = len(target_list)
        mid = end >> 1
        while start < end:
            if target_list[mid] < integer_score:
                start = mid + 1
            else:
                end = mid
            mid = (start + end) >> 1

        answer.append(len(target_list) - mid)

    return answer
