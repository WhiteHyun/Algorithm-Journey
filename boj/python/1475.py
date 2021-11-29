# 1475번: 방 번호
# https://www.acmicpc.net/problem/1475
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number = list(read().rstrip())
    number_dict = {}
    for i in range(10):
        number_dict[i] = number.count(str(i))

    number_dict[69] = (
        number_dict[6] + number_dict[9] + 1
    ) >> 1  # 더한 값이 7이면 4세트가 필요하기 때문에 +1해서 2로 나눔
    del number_dict[6], number_dict[9]
    print(max(number_dict.values()))

