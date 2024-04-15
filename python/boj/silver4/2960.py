#
#  2960번: 에라토스테네스의 체
#  https://www.acmicpc.net/problem/2960
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/09.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    length, erase_count = map(int, read().split())
    nubmer_list = [True] * (length + 1)
    count = 0
    answer = 0
    for i in range(2, length + 1):
        if nubmer_list[i] == True:
            for j in range(i, length + 1, i):
                if nubmer_list[j] == True:
                    count += 1
                    if count == erase_count:
                        answer = j
                        break
                    nubmer_list[j] = False
            else:
                continue
            break

    print(answer)
