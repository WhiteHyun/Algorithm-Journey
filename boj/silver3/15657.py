# 15657번: N과 M (8)
# https://www.acmicpc.net/problem/15657
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def back_tracking(index: int) -> None:
    if index == m:  # 수열이 꽉 찼다면
        print(*sequence)  # 출력
        return

    for i in range(n):
        # 오름차순인지 확인
        if index == 0 or (index != 0 and sequence[index - 1] <= number_list[i]):
            sequence[index] = number_list[i]  # 수열 중 index부분에 숫자 할당
            back_tracking(index + 1)  # 반복


if __name__ == "__main__":
    n, m = map(int, read().split())
    number_list = sorted(map(int, read().split()))
    sequence = [0] * m
    back_tracking(0)  # 인덱스 0부터 시작
