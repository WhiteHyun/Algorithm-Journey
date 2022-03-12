#
#  14501번: 퇴사
#  https://www.acmicpc.net/problem/14501
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/12.
#


from sys import stdin

read = stdin.readline
TIME = 0
BILL = 1


if __name__ == "__main__":
    count = int(read())
    counsel_list = [tuple(map(int, read().split())) for _ in range(count)]
    dp = [0] * count
    dp[-1] = counsel_list[-1][BILL] if counsel_list[-1][TIME] == 1 else 0

    # 끝에서부터 시작하여 갱신
    for i in range(count - 2, -1, -1):
        # 현재 날짜 + 상담 날짜가 퇴사일 이내인 경우
        if (next_index := i + counsel_list[i][TIME]) < count:
            # 현재 날짜의 상담 가격과 이후 날짜에서 구한 최대 수입을 더함
            dp[i] = max(dp[next_index:]) + counsel_list[i][BILL]
        # 퇴사일 직전까지 딱 맞아 떨어지는 경우
        elif next_index == count:
            dp[i] = counsel_list[i][BILL]
    print(max(dp))
