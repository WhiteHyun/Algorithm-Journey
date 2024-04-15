#
#  단어 변환
#  https://school.programmers.co.kr/learn/courses/30/lessons/43163
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/16.
#


from collections import deque


def solution(begin, target, words):
    if target not in words:
        return 0

    length = len(begin)
    all_combo_dict = {}
    for word in words:
        for i in range(length):
            intermediate_word = word[:i] + "*" + word[i + 1 :]
            if all_combo_dict.get(intermediate_word) is None:
                all_combo_dict[intermediate_word] = []
            all_combo_dict[intermediate_word].append(word)

    visited = set()
    visited.add(begin)
    queue = deque([(begin, 0)])  # string, count

    while queue:
        current_word, count = queue.popleft()

        for i in range(length):
            intermediate_word = current_word[:i] + "*" + current_word[i + 1 :]

            if all_combo_dict.get(intermediate_word) is None:
                continue
            for word in all_combo_dict[intermediate_word]:
                if word == target:
                    return count + 1
                if word in visited:
                    continue
                visited.add(word)
                queue.append((word, count + 1))

    return 0
