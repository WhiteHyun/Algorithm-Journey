#
#  17413번: 단어 뒤집기 2
#  https://www.acmicpc.net/problem/17413
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    sentence = read().rstrip()
    reverse = True
    temp_string = ""
    for char in sentence:
        # print(temp_string)
        if char == " ":
            print(temp_string[::-1] if reverse else temp_string, end="")
            print(" ", end="")
            temp_string = ""
        elif char == "<":
            print(temp_string[::-1], end="")
            print("<", end="")
            temp_string = ""
            reverse = False
        elif char == ">":
            reverse = True
            print(temp_string, end="")
            print(">", end="")
            temp_string = ""
        else:
            temp_string += char

    print(temp_string[::-1] if reverse else temp_string)

