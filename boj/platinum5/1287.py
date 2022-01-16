#
#  1287번: 할 수 있다
#  https://www.acmicpc.net/problem/1287
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/16.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    expression = read().rstrip()
    check_expr = expression
    for operator in ("*", "+", "-", "/"):
        check_expr = check_expr.replace(operator, "&")
    try:
        eval(check_expr)
        if "()" in check_expr:
            raise SyntaxError
    except:
        print("ROCK")
    else:
        expression = expression.replace("/", "//")
        print(eval(expression))
