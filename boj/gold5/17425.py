#
#  17425번: 약수의 합
#  https://www.acmicpc.net/problem/17425
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    divisor_list = [1] * 1000001
    divisor_list[0] = 0  # 0은 약수가 없다.

    # === divisor: 약수 ===
    # 2부터 1000000까지의 약수를 구할 것이다.
    for divisor in range(2, 1000001):

        # 해당 약수의 배수가 되는 애들을 더함
        for index in range(divisor, 1000001, divisor):
            divisor_list[index] += divisor

    # === 전체 약수의 합 리스트 ===
    divisor_sum_list = [0] * 1000001
    for i in range(1, 1000001):
        # 해당 수(equal i)와 그 아래 전체의 합을 f(n)이라 하면,
        # f(n) = f(n-1) + n의 약수의 합
        divisor_sum_list[i] = divisor_list[i] + divisor_sum_list[i - 1]

    for _ in range(int(read())):
        index = int(read())
        print(divisor_sum_list[index])

