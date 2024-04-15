#
#  10951번: A+B - 4
#  https://www.acmicpc.net/problem/10951
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/25.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    while (value := read()) :
        print(sum(map(int, value.split())))
