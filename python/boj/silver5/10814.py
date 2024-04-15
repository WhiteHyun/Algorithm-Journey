#
#  10814번: 나이순 정렬
#  https://www.acmicpc.net/problem/10814
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/25.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    sorted_list = sorted(
        [read().rstrip().split() for _ in range(int(read()))], key=lambda x: int(x[0]),
    )
    for value in sorted_list:
        print(*value)
