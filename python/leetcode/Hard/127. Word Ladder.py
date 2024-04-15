#
#  127. Word Ladder
#  https://leetcode.com/problems/word-ladder/description/
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/16.
#


from collections import deque


class Solution:
    def ladderLength(self, beginWord: str, endWord: str, wordList: List[str]) -> int:
        if endWord not in wordList:
            return 0
        word_length = len(beginWord)
        all_combo_dict = {}
        for word in wordList:
            for i in range(word_length):
                string = word[:i] + "*" + word[i + 1 :]
                if all_combo_dict.get(string) is None:
                    all_combo_dict[string] = []
                all_combo_dict[string].append(word)

        queue = deque([(beginWord, 1)])
        visited = set()
        visited.add(beginWord)

        while queue:
            current_word, count = queue.popleft()
            for i in range(word_length):
                intermediate_word = current_word[:i] + "*" + current_word[i + 1 :]
                if all_combo_dict.get(intermediate_word) is None:
                    continue
                for word in all_combo_dict[intermediate_word]:
                    if word == endWord:
                        return count + 1
                    if word in visited:
                        continue
                    visited.add(word)
                    queue.append((word, count + 1))
        return 0
