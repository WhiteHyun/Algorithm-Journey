# 2309번: 일곱 난쟁이
# https://www.acmicpc.net/problem/2309
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    dwarfs = sorted([int(read()) for _ in range(9)])
    total_height = sum(dwarfs)
    exclude_dwarfs = (-1, -1)
    for i in range(8):
        for j in range(i + 1, 9):
            if total_height - dwarfs[i] - dwarfs[j] == 100:
                exclude_dwarfs = (i, j)
    for i, height in enumerate(dwarfs):
        if i not in exclude_dwarfs:
            print(height)

