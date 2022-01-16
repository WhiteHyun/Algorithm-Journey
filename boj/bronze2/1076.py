#
#  1076번: 저항
#  https://www.acmicpc.net/problem/1076
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/16.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    resistance_dict = {
        "black": (0, 1),
        "brown": (1, 10),
        "red": (2, 100),
        "orange": (3, 1000),
        "yellow": (4, 10000),
        "green": (5, 100000),
        "blue": (6, 1000000),
        "violet": (7, 10000000),
        "grey": (8, 100000000),
        "white": (9, 1000000000),
    }
    result = resistance_dict[read().rstrip()][0]
    result = result * 10 + resistance_dict[read().rstrip()][0]
    result *= resistance_dict[read().rstrip()][1]
    print(result)

