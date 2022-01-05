#
#  1157번: 단어 공부
#  https://www.acmicpc.net/problem/1157
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    alphabets = [0] * 26
    for char in read().rstrip().upper():
        alphabets[ord(char) - 65] += 1
    if alphabets.count(alphabets[(index := alphabets.index((max(alphabets))))]) > 1:
        print("?")
    else:
        print(chr(65 + index))
