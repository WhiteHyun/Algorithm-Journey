#
#  11653번: 소인수분해
#  https://www.acmicpc.net/problem/11653
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/01.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = int(read())
    while number != 1:  # 더 이상 나눌 수 없을 때 까지
        for i in range(2, number + 1):
            if number % i:  # 나머지가 있는 경우
                continue
            print(i)
            number //= i
            break

