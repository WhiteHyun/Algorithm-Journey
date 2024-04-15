# 2675번: 문자열 반복
# https://www.acmicpc.net/problem/2675
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        count, string = read().rstrip().split()
        for char in string:
            print(char * int(count), end="")
        print()

