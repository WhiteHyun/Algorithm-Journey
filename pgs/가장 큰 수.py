#
#  가장 큰 수
#  https://school.programmers.co.kr/learn/courses/30/lessons/42746
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/17.
#


def solution(numbers: list) -> str:
    return (
        "".join(sorted([*map(str, numbers)], key=lambda x: (x * 4)[:4], reverse=True))
        if len((numbers_set := set(numbers))) != 1 or numbers_set.pop() != 0
        else "0"
    )
