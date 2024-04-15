#
#  2839번: 설탕 배달
#  https://www.acmicpc.net/problem/2839
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    weight = int(read())
    count = weight // 5
    weight %= 5
    while weight % 3 != 0:
        if count == 0:
            print(-1)
            break
        count -= 1
        weight += 5
    else:
        count += weight // 3
        print(count)
