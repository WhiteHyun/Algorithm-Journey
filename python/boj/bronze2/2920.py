#
#  2920번: 음계
#  https://www.acmicpc.net/problem/2920
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/08.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    note = list(map(int, read().split()))
    if (sorted_note := sorted(note)) == note:
        print("ascending")
    elif note[::-1] == sorted_note:
        print("descending")
    else:
        print("mixed")
