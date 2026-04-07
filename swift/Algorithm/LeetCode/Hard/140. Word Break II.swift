//
//  140. Word Break II.swift
//  https://leetcode.com/problems/word-break-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/25.
//

import Foundation

final class LeetCode140 {
  func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
    let set = Set(wordDict)

    var answers: [String] = []

    let startIndex = s.startIndex

    func backTrack(_ index: Int, _ target: [String]) {
      if target.last!.isEmpty {
        answers.append(target.dropLast().joined(separator: " "))
        return
      }

      for i in index ... target.last!.count {
        let targetString = target.last!
        let specificIndex = targetString.index(startIndex, offsetBy: i)
        let word = String(targetString[startIndex ..< specificIndex])
        if set.contains(word) {
          let nextString = String(targetString[specificIndex...])
          backTrack(1, target.dropLast() + [word, nextString])
        }
      }
    }
    backTrack(1, [s])

    return answers
  }
}
