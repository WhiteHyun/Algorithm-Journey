#
#  2742번: 기찍 N
#  https://www.acmicpc.net/problem/2742
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/14.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print("\n".join([str(i) for i in range(int(read()), 0, -1)]))
