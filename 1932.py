'''
20-06-16 14:19
다이나믹 프로그래밍
시도 횟수: 1
정답
'''
size = int(input())
arr = []
dp = []
for i in range(size):
    temp = list(map(int, input().split()))
    arr.append(temp)
    dp.append([0 for i in range(len(temp))])

dp[0][0] = arr[0][0]
if len(arr) > 1:
    dp[1][0] = dp[0][0] + arr[1][0]
    dp[1][1] = dp[0][0] + arr[1][1]
if len(arr) > 2:
    for i in range(2, len(arr)):
        for j in range(len(dp[i])):
            if j == 0:
                dp[i][j] = dp[i-1][j] + arr[i][j]
            elif j == len(dp[i]) - 1:
                dp[i][j] = dp[i-1][len(dp[i-1])-1] + arr[i][j]
            else:
                dp[i][j] = max(dp[i-1][j-1], dp[i-1][j]) + arr[i][j]
print(max(dp[-1]))
