import sys

size = int(sys.stdin.readline())
A = list(map(int, sys.stdin.readline().split()))
B = list(map(int, sys.stdin.readline().split()))
answer = 0
A.sort()
B.sort(reverse=True)
for i in range(size):
    answer += A[i] * B[i]
print(answer)
