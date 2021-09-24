# 1181번: 단어 정렬
# https://www.acmicpc.net/problem/1181

length = int(input())
sort_list = []
for _ in range(length):
    sort_list.append(input())
sort_list = list(set(sort_list))
print("\n".join(sorted(sort_list, key=lambda x: (len(x), x))))
