#
#  10828번: 스택
#  https://www.acmicpc.net/problem/10828
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/26.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    stack = []
    for _ in range(int(read())):
        command, *args = read().split()
        if command == "push":
            stack.append(args[0])
        elif command == "size":
            print(len(stack))
        elif command == "empty":
            print(0 if stack else 1)
        elif not stack:
            print(-1)
        elif command == "pop":
            print(stack.pop())
        elif command == "top":
            print(stack[-1])
