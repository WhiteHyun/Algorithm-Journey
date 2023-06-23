#
#  마법의 엘리베이터
#  https://school.programmers.co.kr/learn/courses/30/lessons/148653
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/23.
#


def solution(storey):
    answer = 0

    for i in range(1, len(str(storey)) + 2):
        # 자릿수 확인
        digit = int(storey % 10**i / 10 ** (i - 1))
        next_digit = int(storey % 10 ** (i + 1) / 10**i)

        if digit < 5 or (digit == 5 and next_digit < 5):
            answer += digit
            storey -= digit * (10 ** (i - 1))
        elif digit > 5 or next_digit >= 5:
            answer += 10 - digit
            storey += (10 - digit) * (10 ** (i - 1))

    return answer
