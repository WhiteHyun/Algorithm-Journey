//
//  208. Implement Trie (Prefix Tree).swift
//  https://leetcode.com/problems/implement-trie-prefix-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/28.
//

// MARK: - TrieNode

private class TrieNode {
  var children: [Character: TrieNode]
  let value: Character
  var isEndOfWord: Bool

  init(children: [Character: TrieNode] = [:], value: Character, isEndOfWord: Bool = false) {
    self.children = children
    self.value = value
    self.isEndOfWord = isEndOfWord
  }
}

// MARK: - Trie

class Trie {
  private var root: TrieNode

  init() {
    root = .init(value: "$")
  }

  func insert(_ word: String) {
    var node = root
    for character in word {
      if node.children[character] == nil {
        node.children[character] = TrieNode(value: character)
      }
      node = node.children[character]!
    }
    node.isEndOfWord = true
  }

  func search(_ word: String) -> Bool {
    var node = root
    for character in word {
      if node.children[character] == nil {
        return false
      }
      node = node.children[character]!
    }
    return node.isEndOfWord
  }

  func startsWith(_ prefix: String) -> Bool {
    var node = root
    for character in prefix {
      if node.children[character] == nil {
        return false
      }
      node = node.children[character]!
    }
    return true
  }
}
