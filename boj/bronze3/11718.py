#
#  11718번: 그대로 출력하기
#  https://www.acmicpc.net/problem/11718
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/07.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    while (value := read().rstrip()) :
        print(value)
