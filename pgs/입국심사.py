#
#  입국심사
#  https://school.programmers.co.kr/learn/courses/30/lessons/43238
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/23.
#


def binary_search(start: int, end: int, times: list, answer: int, n: int):
    if start >= end:
        return answer
    mid = (start + end) >> 1
    people = 0

    for time in times:
        people += mid // time
    if people >= n:
        answer = mid
        temp = binary_search(start, mid, times, answer, n)
        if answer <= temp:
            return answer
        else:
            return temp
    else:
        temp = binary_search(mid + 1, end, times, answer, n)
        if answer <= temp:
            return answer
        else:
            return temp


def solution(n, times):
    times.sort()
    return binary_search(1, times[-1] * n, times, times[-1] * n, n)


if __name__ == "__main__":
    print(solution(6, [7, 10]) == 28)
