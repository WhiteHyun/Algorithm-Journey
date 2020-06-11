count = int(input())
stairs = []
for i in range(count):
    stairs.append(int(input()))
dp = [-1 for i in range(len(stairs))]

dp[0] = stairs[0]
if count > 1:
    dp[1] = max(stairs[0], stairs[1]+stairs[0])
if count > 2:
    dp[2] = max(stairs[0] + stairs[2], stairs[1] + stairs[2])
if (count > 3):
    for i in range(3, count):
        dp[i] = max(dp[i-2] + stairs[i], dp[i-3] + stairs[i-1] + stairs[i])

print(dp[count-1])
