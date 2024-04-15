#
#  1712번: 손익분기점
#  https://www.acmicpc.net/problem/1712
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    fixed_cost, variable_cost, price = map(int, read().split())
    if variable_cost >= price:
        print(-1)
    else:
        print(fixed_cost // (price - variable_cost) + 1)
