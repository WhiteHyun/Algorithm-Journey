#
#  12865번: 평범한 배낭
#  https://www.acmicpc.net/problem/12865
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/14.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # count: 물건의 개수
    # handle: 배낭 무게 한도
    count, handle = map(int, read().split())

    dp = {0: 0}
    for i in range(count):
        # weight: 무게
        # value: 가치
        weight, value = map(int, read().split())

        # 임시 dictionary, dp를 갱신해주기 위함
        temp_dict = {}

        # dp에 있는 모든 weight, value를 가져옴
        for dict_key, dict_value in dp.items():
            # 만약 입력받은 무게와 dp에 있는 무게(여러 물건이 더해져있거나, 하나의 물건일 수 있음)를 더했을 때 한도 내에 들어오는 경우
            # 이미 그 무게로 만들어진 가치보다 현재 만든 가치가 더 높은 경우
            if dict_key + weight <= handle and dict_value + value > dp.get(
                dict_key + weight, 0
            ):
                # 가치를 더함
                temp_dict[dict_key + weight] = value + dict_value
        # dictionary 업데이트
        dp.update(temp_dict)
    # dictionary에 있는 값중 가장 큰 값이 최대
    print(max(dp.values()))
