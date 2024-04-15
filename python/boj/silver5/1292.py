# 1292번: 쉽게 푸는 문제
# https://www.acmicpc.net/problem/1292
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

# 너무 어렵게 생각한 듯 하다.
# 일일히 append해서 합하면 속도 느릴 줄 알고
# 각 자리수의 합 공식을 사용해서 처리했는데
# 속도가 68ms로 같을줄이야...
if __name__ == "__main__":
    start, end = map(int, read().split())
    i = 1
    # Start 처리
    while not i * (i + 1) // 2 >= start:
        i += 1
    result = (i * (i + 1) // 2 - start + 1) * i

    # End 처리
    while i * (i + 1) // 2 < end:
        i += 1
        result += i * i
    else:  # while문에 들어가게 될 경우 처리되는 구간
        result -= (i * (i + 1) // 2 - end) * i

    print(result)
