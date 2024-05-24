//
//  1255. Maximum Score Words Formed by Letters.swift
//  https://leetcode.com/problems/maximum-score-words-formed-by-letters/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/24.
//

import Foundation

final class LeetCode1255 {
  // MARK: - Runtime 8 ms / Memory 16.65 MB

  func maxScoreWords(_ words: [String], _ letters: [Character], _ scores: [Int]) -> Int {
    let lettersCountDict: [Character: Int] = .init(letters.map { ($0, 1) }, uniquingKeysWith: +)
    let alphabetScoreDict: [Character: Int] = .init(zip(Array("abcdefghijklmnopqrstuvwxyz"), scores).map { ($0, $1) }, uniquingKeysWith: +)

    var maxScore = 0

    func backTrack(_ index: Int, _ lettersCount: [Character: Int], _ currentScore: Int) {
      if maxScore < currentScore {
        maxScore = currentScore
      }

      for i in index ..< words.count {
        let word = words[i]
        let wordLettersCount = Dictionary(word.map { ($0, 1) }, uniquingKeysWith: +)

        guard wordLettersCount.allSatisfy({ lettersCount[$0.key, default: 0] >= $0.value })
        else {
          continue
        }

        let updatedLettersCount = lettersCount.merging(wordLettersCount, uniquingKeysWith: -)
        let wordScore = word.reduce(0) { $0 + alphabetScoreDict[$1, default: 0] }
        backTrack(i + 1, updatedLettersCount, currentScore + wordScore)
      }
    }

    backTrack(0, lettersCountDict, 0)

    return maxScore
  }
}
