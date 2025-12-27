//
//  647. Palindromic Substrings.swift
//  https://leetcode.com/problems/palindromic-substrings/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/13.
//

final class LeetCode647 {
  func countSubstrings(_ s: String) -> Int {
    let array = Array(s)
    let n = array.count
    var count = 0

    var dp: [[Bool]] = .init(
      repeating: .init(repeating: false, count: n),
      count: n,
    )

    for i in dp.indices {
      dp[i][i] = true
      count += 1
    }

    for i in dp.indices.dropLast() where array[i] == array[i + 1] {
      dp[i][i + 1] = true
      count += 1
    }

    for length in stride(from: 3, through: n, by: 1) {
      for i in 0 ... n - length where array[i] == array[i + length - 1] && dp[i + 1][i + length - 2] {
        dp[i][i + length - 1] = true
        count += 1
      }
    }

    return count
  }
}
