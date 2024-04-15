#
#  9012번: 괄호
#  https://www.acmicpc.net/problem/9012
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/03.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        brackets = list(read().rstrip())
        stack = []
        for bracket in brackets:
            if bracket == "(":
                stack.append(bracket)
            elif stack and stack[-1] == "(":
                stack.pop()
            else:
                print("NO")
                break
        else:
            if stack:
                print("NO")
            else:
                print("YES")
