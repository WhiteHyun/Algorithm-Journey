# 11650번: 좌표 정렬하기
# https://www.acmicpc.net/problem/11650

from sys import stdin

# 시간 초과로 인해 input이 아닌 sys.stdin.readline을 사용
if __name__ == "__main__":
    count = int(stdin.readline())
    number_list = []

    for _ in range(count):
        number_list.append(tuple(map(int, stdin.readline().split())))

    number_list.sort(key=lambda x: (x[0], x[1]))
    for numbers in number_list:
        print(numbers[0], numbers[1])
