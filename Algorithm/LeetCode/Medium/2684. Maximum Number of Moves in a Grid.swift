//
//  2684. Maximum Number of Moves in a Grid.swift
//  https://leetcode.com/problems/maximum-number-of-moves-in-a-grid/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/29.
//

final class LeetCode2684 {
  func maxMoves(_ grid: [[Int]]) -> Int {
    let m = grid.count
    let n = grid[0].count
    var dp: [[Int]] = .init(repeating: .init(repeating: -1, count: n), count: m)

    var count = 0
    for i in 0 ..< m {
      dp[i][0] = 0
    }

    for j in 0 ..< n - 1 {
      for i in 0 ..< m where dp[i][j] != -1 {
        if i > 0, grid[i][j] < grid[i - 1][j + 1] {
          dp[i - 1][j + 1] = j + 1
        }
        if grid[i][j] < grid[i][j + 1] {
          dp[i][j + 1] = j + 1
        }
        if i < m - 1, grid[i][j] < grid[i + 1][j + 1] {
          dp[i + 1][j + 1] = j + 1
        }

        if count < j + 1 {
          count = j
        }
      }
    }

    for i in 0 ..< m where dp[i][n - 1] != -1 {
      return n - 1
    }

    return count
  }
}
