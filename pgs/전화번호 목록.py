#
#  전화번호 목록
#  https://school.programmers.co.kr/learn/courses/30/lessons/42577
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/22.
#


def solution(phone_book):
    contacts = set()

    for number in sorted(phone_book):
        for i in range(1, len(number) + 1):
            if number[:i] in contacts:
                return False
        contacts.add(number)

    return True
