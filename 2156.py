size = int(input())
wine = [int(input()) for _ in range(size)]
dp = [0 for i in range(size)]

dp[0] = wine[0]
if size > 1:
    dp[1] = wine[0] + wine[1]
if size > 2:
    dp[2] = max(dp[0] + wine[2], wine[1] + wine[2], dp[1])
if size > 3:
    for i in range(3, size):
        dp[i] = max(dp[i - 2] + wine[i], wine[i] +
                    wine[i - 1] + dp[i - 3], dp[i - 1])

print(max(dp[size - 1], dp[size - 2]))
