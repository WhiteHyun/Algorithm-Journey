# 5347번: LCM
# https://www.acmicpc.net/problem/5347
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        num1, num2 = map(int, read().split())
        temp_num1, temp_num2 = (num1, num2) if num1 > num2 else (num2, num1)
        while temp_num1 % temp_num2 != 0:
            temp_num1, temp_num2 = temp_num2, temp_num1 % temp_num2
        print(num1 * num2 // temp_num2)

