#
#  제로
#  https://www.acmicpc.net/problem/10773
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/03.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    stack = []
    for _ in range(count):
        number = int(read())
        if number != 0:
            stack.append(number)
        else:
            stack.pop()

    print(sum(stack))
