#
#  17427번: 약수의 합 2
#  https://www.acmicpc.net/problem/17427
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length = int(read())
    count = length
    for i in range(2, length + 1):
        count += length // i * i
    print(count)
