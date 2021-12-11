# 2217번: 로프
# https://www.acmicpc.net/problem/2217
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    rope = sorted([int(read()) for _ in range(count)])
    maximum_weight = 0
    for i in range(count):
        if (value := rope[i] * (count - i)) > maximum_weight:
            maximum_weight = value
    print(maximum_weight)
