'''
문제 제목: N과 M (2)
시도 횟수: 1
실패 사유: X
원인: X
결과: 어떻게 풀어야할 지 감이 안잡혀서 다른 사람의 코드를 디버깅하며 이해하고 문제를 풀었다.
빠른 시일 안에 복습해야할 듯 하다.
'''
n, m = list(map(int, input().split()))
arr = list(range(1, n+1))
arr_str = list(map(str, arr))
is_visited = [False] * n
sequence = []


def find_sequence(count):
    if count == m:
        print(' '.join(sequence))
    else:
        for i in range(n):
            if is_visited[i]:
                continue
            is_visited[i] = True
            sequence.append(arr_str[i])
            find_sequence(count + 1)
            sequence.pop()

            for j in range(i + 1, n):
                is_visited[j] = False


find_sequence(0)


# def backtrack(k):
#     if k == M:
#         print(' '.join(order))
#     else:
#         for i in range(n):
#             if is_visited[i]:
#                 continue
#             visit[i] = 1
#             order.append(arr_str[i])
#             backtrack(k+1)
#             visit[i] = 0
#             order.pop()


# backtrack(0)
