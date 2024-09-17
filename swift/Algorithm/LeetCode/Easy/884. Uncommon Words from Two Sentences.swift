//
//  884. Uncommon Words from Two Sentences.swift
//  https://leetcode.com/problems/uncommon-words-from-two-sentences/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/17.
//

final class LeetCode884 {
  func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
    let a = s1.components(separatedBy: .whitespaces)
    let b = s2.components(separatedBy: .whitespaces)

    var aSet: Set<String> = []
    var bSet: Set<String> = []
    var answer: Set<String> = []

    for element in a {
      if aSet.contains(element) {
        answer.remove(element)
        continue
      }
      answer.insert(element)
      aSet.insert(element)
    }

    for element in b {
      if aSet.contains(element) || bSet.contains(element) {
        answer.remove(element)
        continue
      }
      answer.insert(element)
      bSet.insert(element)
    }

    return Array(answer)
  }
}
