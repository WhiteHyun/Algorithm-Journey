#
#  23629번: 이 얼마나 끔찍하고 무시무시한 수식이니
#  https://www.acmicpc.net/problem/23629
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/03.
#


import re
from sys import stdin

read = stdin.readline


def add(expression: int, add_number: int) -> int:
    return expression + add_number


def sub(expression: int, sub_number: int) -> int:
    return expression - sub_number


def mul(expression: int, mul_number: int) -> int:
    return expression * mul_number


def div(expression: int, div_number: int) -> int:
    if expression > 0:
        return expression // div_number
    else:
        return (
            expression // div_number + 1
            if expression % div_number
            else expression // div_number
        )


alpha_to_number_dict = {
    "ZERO": 0,
    "ONE": 1,
    "TWO": 2,
    "THREE": 3,
    "FOUR": 4,
    "FIVE": 5,
    "SIX": 6,
    "SEVEN": 7,
    "EIGHT": 8,
    "NINE": 9,
}
number_to_alpha_dict = {
    0: "ZERO",
    1: "ONE",
    2: "TWO",
    3: "THREE",
    4: "FOUR",
    5: "FIVE",
    6: "SIX",
    7: "SEVEN",
    8: "EIGHT",
    9: "NINE",
}


if __name__ == "__main__":
    sequence = read().rstrip()
    expression = sequence

    # 알파벳을 숫자로 바꿈
    for alpha, number in alpha_to_number_dict.items():
        expression = expression.replace(alpha, str(number))

    # 등호식이 하나 이상 있는 경우
    if len(sequence.split("=")) != 2:
        print("Madness!")
    # 연속된 연산자가 있는 경우
    elif "" in (splited_list := re.split("([+\-x/=])", expression)[:-1]):
        print("Madness!")
    # FIVEIGHT 과 같은 이상한 알파벳이 들어가 있는 경우
    elif not all(
        map(
            lambda x: x.lower() == x,
            filter(lambda x: x not in ("+", "-", "/", "x", "="), splited_list),
        )
    ):
        print("Madness!")
    else:
        print(expression)  # 식 출력
        # print(splited_list)
        operands = list(map(int, splited_list[-2::-2]))
        operators = splited_list[-1::-2]
        while (operator := operators.pop()) != "=":
            value1 = operands.pop()
            value2 = operands.pop()
            if operator == "+":
                operands.append(add(value1, value2))
            elif operator == "-":
                operands.append(sub(value1, value2))
            elif operator == "x":
                operands.append(mul(value1, value2))
            elif operator == "/":
                operands.append(div(value1, value2))

        # 결과값을 알파벳으로
        digits = list(str(operands.pop()))
        for digit in digits:
            # 결과값이 음수값이면 처음에 - 기호가 나옴
            if digit == "-":
                print(digit, end="")
            else:
                print(number_to_alpha_dict[int(digit)], end="")
        print()

