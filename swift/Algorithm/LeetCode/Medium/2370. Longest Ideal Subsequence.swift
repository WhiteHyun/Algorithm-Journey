//
//  2370. Longest Ideal Subsequence.swift
//  https://leetcode.com/problems/longest-ideal-subsequence/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/25.
//

import Foundation

final class LeetCode2370 {
  func longestIdealString(_ s: String, _ k: Int) -> Int {
    let indexArray = Array(s).compactMap(\.asciiValue).map(Int.init).map { $0 - 97 }
    var dp: [Int] = .init(repeating: 0, count: 26)

    for index in indexArray {
      dp[index] = dp[max(0, index - k) ... min(25, index + k)].max()! + 1
    }

    return dp.max()!
  }
}
