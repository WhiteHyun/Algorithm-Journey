# 1541번: 잃어버린 괄호
# https://www.acmicpc.net/problem/1541
# Version: Python 3.9.7


from sys import stdin
from functools import reduce

read = stdin.readline

if __name__ == "__main__":
    expression_list = read().rstrip().split("-")
    print(
        reduce(
            lambda acc, num: acc - num,
            list(map(lambda x: sum(map(int, x.split("+"))), expression_list)),
        )
    )

