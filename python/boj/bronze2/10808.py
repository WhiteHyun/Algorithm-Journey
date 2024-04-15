#
#  10808번: 알파벳 개수
#  https://www.acmicpc.net/problem/10808
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/24.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    alphabet_list = [0] * 26
    for char in read().rstrip():
        alphabet_list[ord(char) - 97] += 1
    print(*alphabet_list)
