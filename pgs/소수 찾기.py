#
#  소수 찾기
#  https://school.programmers.co.kr/learn/courses/30/lessons/42839
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/17.
#


from itertools import permutations


def solution(numbers):
    # 에라토스테네스의 체
    is_prime = [True] * 10000000
    is_prime[0] = False
    is_prime[1] = False

    for i in range(2, int(10000000**0.5)):
        for j in range(i * i, 10000000, i):
            is_prime[j] = False

    # 모든 경우의 수 탐색
    numbers_set = set()
    for i in range(1, len(numbers) + 1):
        for value in permutations(numbers, i):
            numbers_set.add(int("".join(value)))

    count = 0
    for number in numbers_set:
        if is_prime[number]:
            count += 1
    return count
