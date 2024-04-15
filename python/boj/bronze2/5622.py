#
#  5622번: 다이얼
#  https://www.acmicpc.net/problem/5622
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    alpha_dict = {
        3: "ABC",
        4: "DEF",
        5: "GHI",
        6: "JKL",
        7: "MNO",
        8: "PQRS",
        9: "TUV",
        10: "WXYZ",
    }
    count = 0
    for char in read()[:-1]:
        for key in alpha_dict:
            if char in alpha_dict[key]:
                count += key
    print(count)
