#
#  10989번: 수 정렬하기 3
#  https://www.acmicpc.net/problem/10989
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/21.
#


from sys import stdin, stdout

if __name__ == "__main__":
    number_list = [0] * 10001
    for _ in range(int(stdin.readline())):
        number_list[int(stdin.readline())] += 1

    for i in range(1, 10001):
        for _ in range(number_list[i]):
            stdout.write(f"{i}\n")
