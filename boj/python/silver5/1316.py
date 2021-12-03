# 1316번: 그룹 단어 체커
# https://www.acmicpc.net/problem/1316
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    group_words_count = 0

    for _ in range(count):  # count만큼 반복
        current_char = ""
        checked_set = set()
        for char in read().rstrip():
            # 이미 중복된 문자면서 이전에 나온 문자와 다르면
            if char in checked_set and current_char != char:
                break
            else:
                checked_set.add(char)
                current_char = char
        else:  # break 문이 실행되지 않았다면 (그룹단어라면)
            group_words_count += 1
    print(group_words_count)

