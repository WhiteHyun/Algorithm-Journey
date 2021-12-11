# 10610번: 30
# https://www.acmicpc.net/problem/10610
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    number_list = sorted(read().rstrip(), reverse=True)
    if sum(map(int, number_list)) % 3 != 0 or "0" not in number_list:
        print(-1)
    else:
        print("".join(number_list))

