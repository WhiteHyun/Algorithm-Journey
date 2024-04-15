#
#  1932번: 정수 삼각형
#  https://www.acmicpc.net/problem/1932
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/30.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())  # 삼각형 높이 입력
    dp = [[0] * i for i in range(1, count + 1)]  # 이중리스트
    triangle_list = []
    for _ in range(count):
        triangle_list.append(list(map(int, read().split())))

    # 이런 식으로 입력받아옴!
    # [[0], [0, 0], [0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0, 0]]
    # [[7], [3, 8], [8, 1, 0], [2, 7, 4, 4], [4, 5, 2, 6, 5]]

    dp[0][0] = triangle_list[0][0]  # 첫 값은 그냥 넣음

    for i in range(1, count):
        dp[i][0] = dp[i - 1][0] + triangle_list[i][0]  # 맨 앞
        dp[i][i] = dp[i - 1][i - 1] + triangle_list[i][i]  # 맨 뒤

        # 사잇값
        for j in range(1, i):
            # 자신의 위쪽 양옆의 dp 값의 최대를 가져옴
            dp[i][j] = max(dp[i - 1][j - 1], dp[i - 1][j]) + triangle_list[i][j]

    print(max(dp[-1]))  # 최대값 리턴
