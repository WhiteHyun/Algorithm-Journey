#
#  5543번: 상근날드
#  https://www.acmicpc.net/problem/5543
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/24.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    minimum_burger = min([int(read()) for _ in range(3)])
    minimum_drink = min([int(read()) for _ in range(2)])
    print(minimum_burger + minimum_drink - 50)
