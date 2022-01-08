#
#  10250번: ACM 호텔
#  https://www.acmicpc.net/problem/10250
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    test_case = int(read())
    for _ in range(test_case):
        height, width, goal = map(int, read().split())
        if (mod_number := goal % height) == 0:
            print(f"{height}{0 if goal//height < 10 else ''}{goal//height}")
        else:
            print(f"{mod_number}{0 if goal//height < 9 else ''}{goal//height+1}")
