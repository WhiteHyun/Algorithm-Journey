//
//  2416. Sum of Prefix Scores of Strings.swift
//  https://leetcode.com/problems/sum-of-prefix-scores-of-strings/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/25.
//

final class LeetCode2416 {
  private final class TrieNode {
    var children: [Character: TrieNode] = [:]
    var count: Int = 0
  }

  func sumPrefixScores(_ words: [String]) -> [Int] {
    let root = TrieNode()
    for word in words {
      var node = root
      for character in word {
        if node.children[character] == nil {
          node.children[character] = .init()
        }
        node.children[character]!.count += 1
        node = node.children[character]!
      }
    }
    var answer: [Int] = []
    for word in words {
      var count = 0
      var node = root
      for character in word {
        if node.children[character] == nil { break }
        count += node.children[character]!.count
        node = node.children[character]!
      }

      answer.append(count)
    }
    return answer
  }
}
