# 2164번: 카드2
# https://www.acmicpc.net/problem/2164
# Version: Python 3.8.12


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    n = int(read())
    queue = deque([i for i in range(n, 0, -1)])
    number = 0
    while queue:
        number = queue.pop()
        if queue:
            queue.appendleft(queue.pop())

    print(number)
