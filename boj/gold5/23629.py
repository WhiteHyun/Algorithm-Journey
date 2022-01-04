#
#  23629번: 이 얼마나 끔찍하고 무시무시한 수식이니
#  https://www.acmicpc.net/problem/23629
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/03.
#


from sys import stdin

read = stdin.readline


def add(expression: int, add_number: int) -> int:
    return expression + add_number


def sub(expression: int, sub_number: int) -> int:
    return expression - sub_number


def mul(expression: int, mul_number: int) -> int:
    return expression * mul_number


def div(expression: int, div_number: int) -> int:
    return expression // div_number if expression > 0 else expression // div_number + 1


if __name__ == "__main__":
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
    real_expression = ""
    expression = ""
    temp_number = 0
    result = 0
    operator = None
    for char in read()[:-1]:
        expression += char
        if expression in alpha_to_number_dict:
            temp_number = temp_number * 10 + alpha_to_number_dict[expression]
            real_expression += str(alpha_to_number_dict[expression])
            expression = ""
        elif expression in ("+", "-", "x", "/", "="):
            if temp_number == 0:  # Error!
                break
            if operator is not None:
                result = operator(result, temp_number)
            else:
                result = temp_number
            if expression == "+":
                operator = add
            elif expression == "-":
                operator = sub
            elif expression == "x":
                operator = mul
            elif expression == "/":
                operator = div
            real_expression += expression
            expression = ""
            temp_number = 0
    else:
        number_list = []
        minus = False
        if result < 0:
            minus = True
            result = -result
        while result:
            number_list.append(number_to_alpha_dict[result % 10])
            result //= 10
        print(real_expression)
        if minus:
            print(f"-{''.join(number_list[::-1])}")
        else:
            print("".join(number_list[::-1]))
        exit(0)
    print("Madness!")
