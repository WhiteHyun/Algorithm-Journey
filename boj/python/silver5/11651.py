# 11651번: 좌표 정렬하기 2
# https://www.acmicpc.net/problem/11651
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    point_list = []
    for _ in range(int(read())):
        point_list.append(tuple(map(int, read().split())))

    for point in sorted(point_list, key=lambda x: (x[1], x[0])):
        print(*point)
