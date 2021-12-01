# 1744번: 수 묶기
# https://www.acmicpc.net/problem/1744
# Version: Python 3.8.12


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    sequence = sorted([int(read()) for _ in range(count)])
    maximum_value = 0  # 수열의 최대값

    # 수열 중 자연수만 처리
    while len(sequence) > 1 and sequence[-1] > 0:
        positive_number1 = sequence.pop()
        positive_number2 = sequence.pop()

        if positive_number2 > 0:  # 두 번째를 pop했을 때 음수이거나 0이 나올 수 있음
            if (add_number := positive_number1 + positive_number2) < (
                mul_number := positive_number1 * positive_number2
            ):
                maximum_value += mul_number
            else:
                maximum_value += add_number
        else:
            sequence.append(positive_number2)  # 도로 넣음
            maximum_value += positive_number1

    # 음수와 0을 포함하는 수열만 남았으므로 역정렬 수행
    sequence.sort(reverse=True)

    while len(sequence) > 1:
        negative_number1 = sequence.pop()
        negative_number2 = sequence.pop()
        maximum_value += negative_number1 * negative_number2

    # 저장된 수열에는 원소가 하나만 있거나 없음
    if sequence:
        maximum_value += sequence[-1]

    print(maximum_value)

