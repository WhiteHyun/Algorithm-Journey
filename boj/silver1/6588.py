#
#  6588번: 골드바흐의 추측
#  https://www.acmicpc.net/problem/6588
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # 1~100만을 만듦
    number_list = [True] * 1000001
    for i in range(2, 1001):  # 1001 = 1000000 ** 0.5 + 1
        if number_list[i] == True:  # 소수라면
            for j in range(i + i, 1000001, i):  # i 자기자신을 제외한 i의 배수를 전부 False처리
                number_list[j] = False

    # 소수 리스트를 가져옴
    prime_list = [i for i in range(2, 1000001) if number_list[i] == True]

    # 입력받은 값을 number에 저장, 만약 0이라면 반복문 탈출
    while (number := int(read())) != 0:
        for prime_number in prime_list:
            sub_number = number - prime_number
            if number_list[sub_number] == True:
                print(f"{number} = {prime_number} + {sub_number}")
                break
