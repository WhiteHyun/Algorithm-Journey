#
#  4375번: 1
#  https://www.acmicpc.net/problem/4375
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/05.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    while (value := read()) :
        count = 1
        number = int(value)
        div_number = 1
        while div_number % number != 0:
            count += 1
            div_number = div_number * 10 + 1
        print(count)
