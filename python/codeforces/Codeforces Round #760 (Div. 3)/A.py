#
#  A. Polycarp and Sums of Subsequences
#  https://codeforces.com/contest/1618/problem/A
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/15.
#
from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    for _ in range(int(read())):
        array = list(map(int, read().split()))
        for i in range(len(array) - 2):
            for j in range(i + 1, len(array) - 1):
                for k in range(j + 1, len(array)):
                    temp_array = array.copy()
                    temp_array.remove(array[i])
                    temp_array.remove(array[j])
                    temp_array.remove(array[k])
                    if array[i] + array[j] in temp_array:
                        temp_array.remove(array[i] + array[j])
                    if array[i] + array[k] in temp_array:
                        temp_array.remove(array[i] + array[k])
                    if array[j] + array[k] in temp_array:
                        temp_array.remove(array[j] + array[k])
                    if array[i] + array[j] + array[k] in temp_array:
                        temp_array.remove(array[i] + array[j] + array[k])
                    if temp_array:
                        continue
                    else:
                        print(array[i], array[j], array[k])
                        break
                else:
                    continue
                break
            else:
                continue
            break
        else:
            continue
