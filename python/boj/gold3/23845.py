#
#  23845번: 마트료시카
#  https://www.acmicpc.net/problem/23845
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/18.
#


from sys import stdin
from collections import Counter

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    dolls = sorted(map(int, read().split()))
    counter = Counter(dolls)  # 빈도수 구함
    dolls_group = []

    while counter:
        temp_dolls = list(counter.keys())  # 각 입력받은 숫자를 set한 거와 같음

        smallest = temp_dolls[0]
        largest = temp_dolls[0]
        for doll in temp_dolls[1:]:
            if largest + 1 == doll:  # 1만큼 차이가 나는 경우
                largest = doll
            else:
                if smallest == largest:
                    dolls_group.append(smallest)
                else:
                    dolls_group.append((smallest, largest))
                largest = doll
                smallest = doll

        # 남아있는 거 집어넣음
        if smallest == largest:
            dolls_group.append(smallest)
        else:
            dolls_group.append((smallest, largest))

        # 개수 -1 감소
        for key in tuple(counter.keys()):
            # 빈도만큼 다 사용했을 경우 삭제
            if counter[key] == 1:
                del counter[key]
            else:
                counter[key] -= 1
    # 최종 가격 출력
    total_price = 0
    for doll in dolls_group:
        if type(doll) != tuple:  # 단일
            total_price += doll
        else:
            total_price += doll[1] * (doll[1] - doll[0] + 1)
    print(total_price)
