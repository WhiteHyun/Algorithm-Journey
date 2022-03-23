#
#  11866번: 요세푸스 문제 0
#  https://www.acmicpc.net/problem/11866
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/23.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    count, order = map(int, read().split())
    queue = deque([i for i in range(1, count + 1)])
    answer_list = []
    while queue:
        for _ in range(order - 1):
            queue.append(queue.popleft())

        answer_list.append(str(queue.popleft()))
    print(f"<{', '.join(answer_list)}>")
