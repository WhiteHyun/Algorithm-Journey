# 1049번: 기타줄
# https://www.acmicpc.net/problem/1049
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    broken_guitar_string, guitar_brand_count = map(int, read().split())
    guitar_brand_package_list = []
    guitar_brand_individual_list = []
    for _ in range(guitar_brand_count):
        package, one = map(int, read().split())
        guitar_brand_package_list.append(package)
        guitar_brand_individual_list.append(one)

    min_individual_price = min(guitar_brand_individual_list)
    min_package_price = min(min(guitar_brand_package_list), min_individual_price * 6)

    total_price = (broken_guitar_string // 6) * min_package_price

    total_price += min(
        (broken_guitar_string % 6) * min_individual_price, min_package_price
    )
    print(total_price)
