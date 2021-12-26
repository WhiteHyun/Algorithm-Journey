#
#  4949번: 균형잡힌 세상
#  https://www.acmicpc.net/problem/4949
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/26.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    while (string := read().rstrip()) != ".":
        stack = []
        for char in string:
            if char == "(" or char == "[":
                stack.append(char)
            elif stack and (
                (char == ")" and stack[-1] == "(") or (char == "]" and stack[-1] == "[")
            ):
                stack.pop()
            elif char == ")" or char == "]":
                print("no")
                break
        else:
            if stack:
                print("no")
            else:
                print("yes")
