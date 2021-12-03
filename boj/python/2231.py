# 2231번: 분해합
# https://www.acmicpc.net/problem/2231
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    n = int(read())
    constructor = 0
    for i in range(1, n):
        temp_number = i
        j = i
        while True:
            temp_number += j % 10
            j //= 10
            if j == 0:
                break

        if n == temp_number:
            constructor = i
            break

    print(constructor)
