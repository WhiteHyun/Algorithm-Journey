#
#  9461번: 파도반 수열
#  https://www.acmicpc.net/problem/9461
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/03.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # 1, 1, 1, 2, 2, (2+1=3), (3+1=4), (4+1=5), (5+2=7), (7+2=9), (9+3=12), (12+4=16), (16+5=21), (21+7=28), (28+9=37)
    dp = [0] * 101
    dp[1] = 1
    dp[2] = 1
    dp[3] = 1
    dp[4] = 2
    dp[5] = 2
    for i in range(6, 101):  # 6부터 100까지 규칙은 다음과 같다.
        dp[i] = dp[i - 1] + dp[i - 5]

    for _ in range(int(read())):  # 입력받은 값만큼 반복
        print(dp[int(read())])  # 입력받은 값을 인덱스로 하여 참조 후 출력
