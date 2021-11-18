# 1003번: 피보나치 함수
# https://www.acmicpc.net/problem/1003


from sys import stdin
from typing import List, Tuple
input = stdin.readline


def make_fibonacci_count_list() -> List[Tuple]:
    """
    0이 불려지고, 1이 불려지는 횟수를 튜플로 설정하여
    각 숫자마다 몇 개가 불려지는지를 생성한다.
    """
    dp = [(0, 0)]*41
    dp[0] = (1, 0)
    dp[1] = (0, 1)

    for i in range(2, 41):
        dp[i] = tuple(sum(element) for element in zip(dp[i-1], dp[i-2]))

    return dp


if __name__ == "__main__":
    # 피보나치를 불러가면서 처리하는 것은 시간낭비! 다이나믹 프로그래밍으로 처리해주자
    count = int(input())
    dp = make_fibonacci_count_list()
    for _ in range(count):  # count만큼 반복
        index = int(input())
        for number in dp[index]:
            print(number, end=" ")
        print()
