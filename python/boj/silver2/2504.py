#
#  2504번: 괄호의 값
#  https://www.acmicpc.net/problem/2504
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/27.
#


from sys import stdin

read = stdin.readline


def calculate(string: str) -> int:
    stack = []
    for char in string:
        # 열린 괄호면 스택에 저장
        if char == "(" or char == "[":
            stack.append(char)
        # 닫힌괄호인데 스택에 아무것도 없으면
        elif not stack:
            return 0
        else:
            value = 0
            # 괄호 내부에 숫자를 다 꺼내서 더함
            while stack and type(temp := stack.pop()) == int:
                value += temp
            # 괄호가 맞지 않을 때
            if (char == ")" and temp != "(") or (char == "]" and temp != "["):
                return 0
            elif value == 0:  # 숫자가 없었을 경우
                value = 1  # 곱하기 위해 1로 초기화
            value *= 2 if char == ")" else 3
            stack.append(value)

    # 열린괄호가 존재하는지 확인
    if len(tuple(filter(lambda x: type(x) == str, stack))) > 0:
        return 0
    return sum(stack)


if __name__ == "__main__":
    string = read().rstrip()
    print(calculate(string))
