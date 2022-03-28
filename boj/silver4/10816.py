#
#  10816번: 숫자 카드 2
#  https://www.acmicpc.net/problem/10816
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/28.
#


from sys import stdin
from collections import Counter

read = stdin.readline


if __name__ == "__main__":
    _ = int(read())
    cards_dict = Counter(map(int, read().split()))
    _ = int(read())
    targets = list(map(int, read().split()))
    print(*list(map(lambda x: cards_dict[x], targets)))
