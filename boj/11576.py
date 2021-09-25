# 11576번: Base Conversion
# https://www.acmicpc.net/problem/11576


def translate_to_other_notation(my_notation: int, your_notation: int, number_list: list) -> int:
    """
    원하고자 하는 진법으로 변경합니다.

    Parameters
    ----------

    my_notation (int):
        사용자가 사용하는 진법입니다.

    your_notation (int):
        상대가 이해하는 진법입니다.

    number_list (list):
        상대의 진법으로 변환할 숫자입니다.
    """
    decimal_list = []
    position = 0
    number_list.reverse()

    # A진법을 10진법으로 변환
    for number in number_list:
        decimal_list.append((my_notation ** position) * number)
        position += 1

    decimal_number = sum(decimal_list)

    # 10진법을 B진법으로 변환

    your_number_list = []

    while decimal_number >= your_notation:
        your_number_list.append(decimal_number % your_notation)
        decimal_number //= your_notation

    your_number_list.append(decimal_number)
    your_number_list.reverse()
    return your_number_list


if __name__ == "__main__":
    a_notation, b_notation = map(int, input().split())
    input()  # 쓰레기 값 처리
    a_number_list = list(map(int, input().split()))
    b_number_list = translate_to_other_notation(
        a_notation, b_notation, a_number_list)
    print(" ".join(list(map(str, b_number_list))))
