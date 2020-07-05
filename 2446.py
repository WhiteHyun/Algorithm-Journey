'''
문제 제목: 별 찍기 - 9
시도 횟수: 1 성공
실패 사유: X
원인: X
'''
n = int(input())


for i in range(0, 2 * n, 2):
    for j in range(int(i / 2)):
        print(' ', end='')
    for k in range(i, 2*n-1):
        print('*', end='')
    print()

for i in range(1, n):
    for j in range(n, i + 1, -1):
        print(' ', end='')
    print('*' * (2*i + 1), end='')
    print()
