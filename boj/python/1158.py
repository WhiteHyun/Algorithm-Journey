# 1158번: 요세푸스 문제
# https://www.acmicpc.net/problem/1158
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    n, k = map(int, read().split())
    number_list = [str(i) for i in range(1, n + 1)]
    josephus_list = []

    i = k - 1
    while number_list:
        # [1, 2, 3, 4, 5, 6, 7]
        josephus_list.append(number_list.pop(i))
        if (length := len(number_list)) != 0:
            i = (i + k - 1) % length
    print(f"<{', '.join(josephus_list)}>")

