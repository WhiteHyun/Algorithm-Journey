# 1676번: 팩토리얼 0의 개수
# https://www.acmicpc.net/problem/1676
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number_dict = {2: 0, 5: 0, 10: 0}
    for i in range(2, int(read()) + 1):
        while True:
            if i % 10 == 0:
                number_dict[10] += 1
                i //= 10
            elif i % 5 == 0:
                number_dict[5] += 1
                i //= 5
            elif i % 2 == 0:
                number_dict[2] += 1
                i //= 2
            else:
                break
    print(number_dict[10] + min(number_dict[2], number_dict[5]))

