//
//  2490. Circular Sentence.swift
//  https://leetcode.com/problems/circular-sentence/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/02.
//

final class LeetCode2490 {
  func isCircularSentence(_ sentence: String) -> Bool {
    if sentence.first != sentence.last { return false }
    var previousWord: String.SubSequence = ""
    for word in sentence.split(separator: /\w/) {
      if previousWord.isEmpty {
        previousWord = word
        continue
      }

      if previousWord.last != word.first {
        return false
      }

      previousWord = word
    }

    return true
  }
}
