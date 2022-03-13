#
#  6064번: 카잉달력
#  https://www.acmicpc.net/problem/6064
#  Version: Python 3.9.10
#
#  Created by WhiteHyun on 2022/03/13.
#


from math import lcm
from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    for _ in range(count):
        m, n, x, y = map(int, read().split())

        # 나누어 떨어지는 계산을 밑에서 진행할 때
        # m == x 면 R(0≤R<m) 이기 때문에 값을 0으로 치환
        if m == x:
            x = 0
        if n == y:
            y = 0

        # == LCM ==
        length = lcm(m, n)  # 최대 길이임

        # 최대 길이 숫자 중 m으로 나눈 나머지가 x인 수만큼 반복
        for number in range(x, length + 1, m):

            # 0번째는 없기 때문에 생략
            if number == 0:
                continue

            if number % n == y:
                print(number)
                break
        else:
            print(-1)
