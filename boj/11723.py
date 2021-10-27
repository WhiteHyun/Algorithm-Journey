# 11723번: 집합
# https://www.acmicpc.net/problem/11723
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


if __name__ == "__main__":
    set_list = [False] * 20
    count = int(read())
    for _ in range(count):
        opcode, *args = read().split()  # 명령어와 인자를 분리한다.
        if opcode == "add":
            set_list[int(args[0]) - 1] = True
        elif opcode == "remove":
            set_list[int(args[0]) - 1] = False
        elif opcode == "check":
            print("1" if set_list[int(args[0]) - 1] else "0")
        elif opcode == "toggle":
            set_list[int(args[0]) - 1] = not set_list[int(args[0]) - 1]
        elif opcode == "all":
            set_list = [True] * 20
        elif opcode == "empty":
            set_list = [False] * 20
