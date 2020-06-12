from collections import deque
import sys
queue = deque()
command = int(sys.stdin.readline())

for i in range(command):
    queue_cmd = sys.stdin.readline().split()
    if queue_cmd[0] == "push":
        queue.append(queue_cmd[1])
    elif queue_cmd[0] == "pop":
        if not queue:
            print(-1)
        else:
            print(queue.popleft())
    elif queue_cmd[0] == "size":
        print(len(queue))
    elif queue_cmd[0] == "empty":
        if not queue:
            print(1)
        else:
            print(0)
    elif queue_cmd[0] == "front":
        if not queue:
            print(-1)
        else:
            print(queue[0])
    elif queue_cmd[0] == "back":
        if not queue:
            print(-1)
        else:
            print(queue[-1])
