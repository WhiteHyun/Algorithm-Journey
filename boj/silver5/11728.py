#
#  11728번: 배열 합치기
#  https://www.acmicpc.net/problem/11728
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/28.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    len_a, len_b = map(int, read().split())
    a = list(map(int, read().split()))
    b = list(map(int, read().split()))

    answer = []
    i = 0
    j = 0
    while i < len_a and j < len_b:
        if a[i] < b[j]:
            answer.append(a[i])
            i += 1
        else:
            answer.append(b[j])
            j += 1

    if i < len_a:
        for x in range(i, len_a):
            answer.append(a[x])
    elif j < len_b:
        for x in range(j, len_b):
            answer.append(b[x])
    print(*answer)

