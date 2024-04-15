#
#  10809번: 알파벳 찾기
#  https://www.acmicpc.net/problem/10809
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    alphabets = [-1] * 26
    for index, char in enumerate(read().rstrip()):
        if alphabets[(alpha_index := ord(char) - 97)] == -1:
            alphabets[alpha_index] = index
    print(*alphabets)
