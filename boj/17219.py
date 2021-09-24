# 17219번: 비밀번호 찾기
# https://www.acmicpc.net/problem/17219

# input 받는 시간을 줄이기 위해 sys import
from sys import stdin

if __name__ == "__main__":
    input_length, find_length = map(int, stdin.readline().split())

    pass_dict = {}
    for _ in range(input_length):
        site, password = stdin.readline().split()
        pass_dict[site] = password

    for _ in range(find_length):
        site = stdin.readline().strip()
        print(pass_dict[site])
