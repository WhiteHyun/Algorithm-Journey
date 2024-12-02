//
//  1455. Check If a Word Occurs As a Prefix of Any Word in a Sentence.swift
//  https://leetcode.com/problems/check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/12/02.
//

final class LeetCode1455 {
  func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
    sentence.split(separator: " ")
      .map { $0.prefix(searchWord.count) == searchWord }
      .enumerated()
      .filter(\.1)
      .map { $0.offset + 1 }
      .first ?? -1
  }
}
