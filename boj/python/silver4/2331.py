# 2331번: 반복수열
# https://www.acmicpc.net/problem/2331
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    first_number, pow_number = map(int, read().split())
    sequence = [first_number]
    while True:
        next_number = sum(
            map(lambda x: x ** pow_number, map(int, list(str(sequence[-1]))))
        )
        if next_number in sequence:
            print(sequence.index(next_number))
            break

        sequence.append(next_number)
