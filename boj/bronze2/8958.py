#
#  8958번: OX퀴즈
#  https://www.acmicpc.net/problem/8958
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/03.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        ox_list = read().rstrip().split("X")
        count = 0
        for o in ox_list:
            if o:  # O일 경우
                o_length = len(o)
                count += o_length * (o_length + 1) // 2
        print(count)

