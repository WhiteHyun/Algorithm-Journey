#
#  10867번: 중복 빼고 정렬하기
#  https://www.acmicpc.net/problem/10867
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    read()
    print(*sorted({*map(int, read().split())}))
