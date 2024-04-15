#
#  과제 진행하기
#  https://school.programmers.co.kr/learn/courses/30/lessons/176962
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/23.
#


def solution(plans):
    homework_stack = []

    # mapping string time to integer time(Units by m.)
    for i in range(len(plans)):
        hour, minute = plans[i][1].split(":")
        plans[i][1] = int(hour) * 60 + int(minute)
        plans[i][2] = int(plans[i][2])

    # sorting to use stack
    plans.sort(key=lambda x: -x[1])

    homework_stack.append(plans.pop())
    current_time = homework_stack[-1][1]

    answer = []
    while homework_stack or plans:
        subject, time, need_time = homework_stack.pop()
        # 숙제를 도중에 멈춰야하는가?
        if plans and plans[-1][1] < current_time + need_time:
            homework_stack.append(
                (subject, time, need_time - plans[-1][1] + current_time)
            )
            current_time = plans[-1][1]
            homework_stack.append(plans.pop())
            continue

        # 아니라면 숙제를 끝낸다.
        answer.append(subject)
        current_time += need_time
        # 남아있는 숙제가 없고 새롭게 해야하는 과제만 있는가?
        if not homework_stack and plans:
            current_time = plans[-1][1]
            homework_stack.append(plans.pop())

    return answer
