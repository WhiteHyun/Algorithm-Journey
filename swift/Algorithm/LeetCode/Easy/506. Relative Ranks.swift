//
//  506. Relative Ranks.swift
//  https://leetcode.com/problems/relative-ranks/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/08.
//

import Foundation

final class LeetCode506 {
  func findRelativeRanks(_ score: [Int]) -> [String] {
    let maxScore = score.max()!
    var array: [Int] = .init(repeating: .min, count: maxScore + 1)
    for i in score.indices {
      array[score[i]] = i
    }

    var count = 0
    var answer: [String] = .init(repeating: "", count: score.count)
    for i in stride(from: array.count - 1, through: 0, by: -1) where array[i] != .min {
      if count == 0 {
        answer[array[i]] = "Gold Medal"
      } else if count == 1 {
        answer[array[i]] = "Silver Medal"
      } else if count == 2 {
        answer[array[i]] = "Bronze Medal"
      } else {
        answer[array[i]] = "\(count + 1)"
      }
      count += 1
    }
    return answer
  }
}
