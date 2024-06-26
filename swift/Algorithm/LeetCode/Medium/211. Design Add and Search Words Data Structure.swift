//
//  211. Design Add and Search Words Data Structure.swift
//  https://leetcode.com/problems/design-add-and-search-words-data-structure/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/28.
//

enum LeetCode211 {
  private final class TrieNode {
    var children: [Character: TrieNode]
    var endOfWord: Bool

    init(
      children: [Character: TrieNode] = [:],
      endOfWord: Bool = false
    ) {
      self.children = children
      self.endOfWord = endOfWord
    }
  }

  final class WordDictionary {
    private let root: TrieNode

    init() {
      root = TrieNode()
    }

    func addWord(_ word: String) {
      var node = root
      for character in word {
        if node.children[character] == nil {
          node.children[character] = TrieNode()
        }
        node = node.children[character]!
      }
      node.endOfWord = true
    }

    func search(_ word: String) -> Bool {
      let word = Array(word)
      func dfs(index: Int, node: TrieNode) -> Bool {
        guard index < word.count else { return node.endOfWord }

        let character = word[index]
        if character == "." {
          return node.children.values.contains { dfs(index: index + 1, node: $0) }
        } else if let nextNode = node.children[character] {
          return dfs(index: index + 1, node: nextNode)
        }
        return false
      }
      return dfs(index: 0, node: root)
    }
  }
}
