#
#  1011번: Fly me to the Alpha Centauri
#  https://www.acmicpc.net/problem/1011
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/14.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    test_case_count = int(read())  # 테스트 케이스 개수
    for _ in range(test_case_count):
        start, end = map(int, read().split())
        distance = end - start  # 거리
        n = 1
        while n * (n + 1) < distance:
            n += 1

        if distance <= n ** 2:
            print(n * 2 - 1)
        else:
            print(n * 2)


"""
01: 1
02: 1 1
03: 1 1 1
04: 1 2 1
05: 1 2 1 1
06: 1 2 2 1
07: 1 2 2 1 1
08: 1 2 2 2 1
09: 1 2 3 2 1
10: 1 2 3 2 1 1
11: 1 2 3 2 2 1
12: 1 2 3 3 2 1
13: 1 2 3 3 2 1 1
14: 1 2 3 3 2 2 1
15: 1 2 3 3 3 2 1
16: 1 2 3 4 3 2 1
17: 1 2 3 4 3 2 1 1


1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
1 2 3 3 4 4 5 5 5 6  6  6  7  7  7  7  8  8  8  8 ...

1 1 2 2 3 3 4 4 5 5 6 6 7 7..
"""
