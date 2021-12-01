# 1744번: 수 묶기
# https://www.acmicpc.net/problem/1744
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())

    positive_sequence = []  # 양수
    negative_sequence = []  # 음수
    # 수열을 입력받음
    for _ in range(count):
        number = int(read())
        positive_sequence.append(number) if number >= 0 else negative_sequence.append(
            number
        )
    # == sort ==
    positive_sequence.sort()
    negative_sequence.sort()
    positive_length = len(positive_sequence)
    negative_length = len(negative_sequence)
    result = 0

    # 작은 수부터 짝지어서 곱함
    for i in range(0, negative_length - 1, 2):
        result += negative_sequence[i] * negative_sequence[i + 1]

    # 큰 수부터 짝지어 곱하되 만약 덧셈이 더 크면 더함 (ex: 1, 889)
    for i in range(positive_length - 1, 0, -2):
        if (mul_number := positive_sequence[i] * positive_sequence[i - 1]) < (
            add_number := positive_sequence[i] + positive_sequence[i - 1]
        ):
            result += add_number
        else:
            result += mul_number

    # 음수가 홀수개이고 0을 입력받았다면 음수는 생략 가능
    if (
        (negative_flag := negative_length & 1) == 1
        and positive_sequence
        and positive_sequence[0] == 0
    ):
        pass
    # 만약 음수와 홀수 둘 다 홀수개일 경우 (짝짓지 못한 경우) 곱하거나 더하는 것중 가장 큰 값을 더함
    elif (positive_flag := positive_length & 1) == 1 and negative_flag:
        if (mul_number := positive_sequence[0] * negative_sequence[-1]) < (
            add_number := positive_sequence[0] + negative_sequence[-1]
        ):
            result += add_number
        else:
            result += mul_number
    # 음수만 홀수인 경우
    elif negative_flag:
        result += negative_sequence[-1]
    # 양수만 홀수인 경우
    elif positive_flag:
        result += positive_sequence[0]

    print(result)
