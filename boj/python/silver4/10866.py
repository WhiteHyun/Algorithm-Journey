# 10866번: 덱
# https://www.acmicpc.net/problem/10866
# Version: Python 3.9.7


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    sequence = deque([])
    for _ in range(int(read())):
        command = read().rstrip()
        if command.find(" ") != -1:
            command, number = command.split()
            if command == "push_back":
                sequence.append(number)
            else:
                sequence.appendleft(number)
        elif command == "front":
            if len(sequence) == 0:
                print(-1)
            else:
                print(sequence[0])
        elif command == "back":
            if len(sequence) == 0:
                print(-1)
            else:
                print(sequence[-1])
        elif command == "size":
            print(len(sequence))
        elif command == "empty":
            print(1 if len(sequence) == 0 else 0)
        elif command == "pop_front":
            if len(sequence) == 0:
                print(-1)
            else:
                print(sequence.popleft())
        elif command == "pop_back":
            if len(sequence) == 0:
                print(-1)
            else:
                print(sequence.pop())

