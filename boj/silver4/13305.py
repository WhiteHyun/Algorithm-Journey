#
#  13305번: 주유소
#  https://www.acmicpc.net/problem/13305
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/01.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    city_count = int(read())
    distance_list = list(map(int, read().split()))
    gas_list = list(map(int, read().split()))
    total_price = 0  # 총 지불한 가격
    min_gas_price = gas_list[0]  # 기름 가격
    for i in range(city_count - 1):  # O(n)
        # 만약 다음 도시의 기름이 더 쌀 경우
        if min_gas_price > gas_list[i]:
            min_gas_price = gas_list[i]
        total_price += min_gas_price * distance_list[i]
    print(total_price)
