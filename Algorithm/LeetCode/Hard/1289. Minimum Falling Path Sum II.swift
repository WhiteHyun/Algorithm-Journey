//
//  1289. Minimum Falling Path Sum II.swift
//  https://leetcode.com/problems/minimum-falling-path-sum-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/26.
//

import Foundation

final class LeetCode1289 {
  func minFallingPathSum(_ grid: [[Int]]) -> Int {
    var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: grid[0].count), count: grid.count)

    dp[0] = grid[0]
    for i in grid.indices.dropFirst() {
      for j in grid[i].indices {
        dp[i][j] = dp[i - 1].enumerated().filter { $0.offset != j }.min(by: { $0.element < $1.element })!.element
        dp[i][j] += grid[i][j]
      }
    }
    return dp.last!.min()!
  }
}
