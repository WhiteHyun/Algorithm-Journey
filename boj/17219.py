# 17219번: 비밀번호 찾기
# https://www.acmicpc.net/problem/17219

# input 받는 시간을 줄이기 위해 sys import
from sys import stdin
input = stdin.readline

if __name__ == "__main__":
    input_length, find_length = map(int, input().split())

    pass_dict = {}
    for _ in range(input_length):
        site, password = input().split()
        pass_dict[site] = password

    for _ in range(find_length):
        site = input().strip()
        print(pass_dict[site])
