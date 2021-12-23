#
#  15629번: Africa
#  https://www.acmicpc.net/problem/15629
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/23.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":

    price = 0
    cities = [read().rstrip() for _ in range(int(read()))]

    zambia_exists = False
    zimbabwe_exists = False
    south_africa_exists = False
    temp_city = ""
    for city in cities:
        if city == "ethiopia" or city == "kenya" or city == "tanzania":
            price += 50
        elif city == "south-africa":
            south_africa_exists = True
        elif city == "namibia":
            price += 40 if south_africa_exists else 140
        elif city == "zambia":
            price += 20 if temp_city == "zimbabwe" else 50
        elif city == "zimbabwe":
            price += 0 if temp_city == "zambia" else 30
        temp_city = city
    print(price)
