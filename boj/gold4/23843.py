#
#  23843번: 콘센트
#  https://www.acmicpc.net/problem/23843
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/18.
#


from sys import stdin
from collections import Counter

read = stdin.readline

if __name__ == "__main__":
    n, m = map(int, read().split())
    device_time_list = sorted(map(int, read().split()))
    time_counter = Counter(device_time_list)
    concent_list = [0] * m  # 콘센트
    time = 0
    while device_time_list:  # 전자기기를 다 충전할 때까지 반복
        for i in range(m):
            if concent_list[i] == 0:
                concent_list[i] = device_time_list.pop()
                break

        if 0 not in concent_list:  # 남는 콘센트가 없다면
            min_left_time = min(concent_list)  # 가장 빨리 끝나는 값만큼 시간이 지나야함
            for i in range(m):
                concent_list[i] -= min_left_time

            time += min_left_time

    # 전자기기를 충전기에 다 꽃았고 나머지가 충전되어 있는 경우
    if concent_list:
        time += max(concent_list)
    print(time)
