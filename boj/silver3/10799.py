#
#  10799번: 쇠막대기
#  https://www.acmicpc.net/problem/10799
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/28.
#


from sys import stdin

read = stdin.readline


def solve(brackets: list) -> int:
    count = 0
    stack = []
    for bracket in brackets:
        if bracket == "(":
            stack.append(bracket)
        # Lazer
        elif bracket == ")" and stack[-1] == "(":
            stack.pop()
            stack.append(1)
        else:
            stick_count = 0
            while (value := stack.pop()) != "(":
                stick_count += value
            stack.append(stick_count)
            count += stick_count + 1

    return count


if __name__ == "__main__":
    brackets = list(read().rstrip())
    print(solve(brackets))
