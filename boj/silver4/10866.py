#
#  10866번: 덱
#  https://www.acmicpc.net/problem/10866
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/26.
#


from sys import stdin
from collections import deque

read = stdin.readline

if __name__ == "__main__":
    sequence = deque()
    for _ in range(int(read())):
        command, *args = read().split()
        if command == "push_front":
            sequence.appendleft(args[0])
        elif command == "push_back":
            sequence.append(args[0])
        elif command == "size":
            print(len(sequence))
        elif command == "empty":
            print(0 if sequence else 1)
        elif not sequence:
            print(-1)
        elif command == "front":
            print(sequence[0])
        elif command == "back":
            print(sequence[-1])
        elif command == "pop_front":
            print(sequence.popleft())
        elif command == "pop_back":
            print(sequence.pop())
