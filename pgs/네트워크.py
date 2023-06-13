#
#  네트워크
#  https://school.programmers.co.kr/learn/courses/30/lessons/43162
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/13.
#


def solution(n: int, computers: list) -> int:
    visited = [False] * n
    answer = 0

    for i in range(len(computers)):
        if visited[i]:
            continue

        stack = [i]
        visited[i] = True
        answer += 1
        while stack:
            index = stack.pop()
            for computer_number in range(len(computers[index])):
                if computer_number == index or visited[computer_number]:
                    continue
                if computers[index][computer_number] == 1:
                    stack.append(computer_number)
                    visited[computer_number] = True
    return answer
