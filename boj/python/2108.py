# 2108번: 통계학
# https://www.acmicpc.net/problem/2108
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    number_list = sorted([int(read()) for _ in range(count)])
    mode_dict = {}
    for i in number_list:
        if i not in mode_dict:
            mode_dict[i] = 1
        else:
            mode_dict[i] += 1
    sorted_mode_list = sorted(mode_dict.items(), key=lambda x: (-x[1], x[0]))

    print(round(sum(number_list) / count))
    print(number_list[count >> 1])
    if count > 1 and sorted_mode_list[0][1] == sorted_mode_list[1][1]:
        print(sorted_mode_list[1][0])
    else:
        print(sorted_mode_list[0][0])
    print(number_list[-1] - number_list[0])

