#
#  4948번: 베르트랑 공준
#  https://www.acmicpc.net/problem/4948
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/10.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # 에라토스테네스의 체
    end = 123456 * 2 + 1
    prime_list = [True] * end
    prime_list[1] = False
    for i in range(2, end >> 1):
        for j in range(i * 2, end, i):
            prime_list[j] = False

    # 0을 입력받을 때 까지 반복
    while value := int(read()):
        print(prime_list[value + 1 : value * 2 + 1].count(True))
