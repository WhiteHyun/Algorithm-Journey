# 1120번: 문자열
# https://www.acmicpc.net/problem/1120
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    a, b = read().split()
    if a in b:
        print(0)
    else:
        minimum = 51

        # Brute Force
        for i in range(len(b) - len(a) + 1):
            count = 0
            for j in range(len(a)):
                if a[j] != b[i + j]:
                    count += 1
            if count < minimum:
                minimum = count
        print(minimum)
