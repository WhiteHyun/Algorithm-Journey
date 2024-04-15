#
#  10845번: 큐
#  https://www.acmicpc.net/problem/10845
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/26.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    queue = deque()
    for _ in range(int(read())):
        command, *args = read().split()
        if command == "push":
            queue.append(args[0])
        elif command == "size":
            print(len(queue))
        elif command == "empty":
            print(0 if queue else 1)
        elif not queue:
            print(-1)
        elif command == "pop":
            print(queue.popleft())
        elif command == "back":
            print(queue[-1])
        elif command == "front":
            print(queue[0])
