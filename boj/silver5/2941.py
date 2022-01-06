#
#  2941번: 크로아티아 알파벳
#  https://www.acmicpc.net/problem/2941
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    temp = ""
    croatia_list = ["c=", "c-", "d-", "lj", "nj", "s=", "z="]
    count = 0
    for char in read()[:-1]:
        temp += char
        if (length := len(temp)) == 2 and temp in croatia_list:
            temp = ""
        elif temp == "dz":
            count += 1
        elif temp == "dz=":
            temp = ""
            count -= 1
        else:
            if length >= 2:
                temp = temp[-1]
            count += 1
    print(count)
