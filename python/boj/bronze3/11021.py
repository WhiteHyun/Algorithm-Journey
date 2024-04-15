#
#  11021번: A+B - 7
#  https://www.acmicpc.net/problem/11021
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/17.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for i in range(int(read())):
        print(f"Case #{i+1}: {sum(map(int, read().split()))}")
