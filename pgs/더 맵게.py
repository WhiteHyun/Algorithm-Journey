#
#  더 맵게
#  https://school.programmers.co.kr/learn/courses/30/lessons/42626
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/17.
#

from collections import deque


def solution(scoville, K):
    count = 0
    mix_queue = deque()
    raw_queue = deque(sorted(scoville))

    while (mix_queue and mix_queue[0] < K) or (raw_queue and raw_queue[0] < K):
        # 둘 다 존재하는가
        value = 0
        for i in [1, 2]:
            if mix_queue and raw_queue:
                if mix_queue[0] < raw_queue[0]:
                    value += mix_queue.popleft() * i
                else:
                    value += raw_queue.popleft() * i
            elif raw_queue:
                value += raw_queue.popleft() * i
            elif mix_queue:
                value += mix_queue.popleft() * i
            else:
                return -1
        mix_queue.append(value)
        count += 1
    return count
