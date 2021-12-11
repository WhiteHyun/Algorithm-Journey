# 1065번: 한수
# https://www.acmicpc.net/problem/1065
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    if count < 100:
        print(count)
    else:
        han_number = 99
        for number in range(111, count + 1):
            hundred, ten, one = (
                number // 100,
                (number % 100) // 10,
                ((number % 100) % 10),
            )
            if hundred - ten == ten - one:
                han_number += 1

        print(han_number)
