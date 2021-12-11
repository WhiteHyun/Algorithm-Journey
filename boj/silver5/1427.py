# 1427번: 소트인사이드
# https://www.acmicpc.net/problem/1427
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    print("".join(sorted(read().rstrip(), reverse=True)))
