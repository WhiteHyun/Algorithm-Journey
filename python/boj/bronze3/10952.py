#
#  10952번: A+B - 5
#  https://www.acmicpc.net/problem/10952
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/19.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    while (value := tuple(map(int, read().split()))) != (0, 0):  # 0 0 을 입력받기 전 까지 반복
        print(sum(value))
