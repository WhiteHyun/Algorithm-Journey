#
#  18258번: 큐 2
#  https://www.acmicpc.net/problem/18258
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/15.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    queue = deque([])
    for _ in range(int(read())):
        command = read().split()
        if len(command) != 1:  # push
            queue.append(command[1])
        elif command[0] == "pop":  # pop
            if queue:
                print(queue.popleft())
            else:
                print(-1)
        elif command[0] == "size":  # size
            print(len(queue))
        elif command[0] == "empty":
            if queue:
                print(0)
            else:
                print(1)
        elif command[0] == "front":
            if queue:
                print(queue[0])
            else:
                print(-1)
        elif command[0] == "back":
            if queue:
                print(queue[-1])
            else:
                print(-1)
