//
//  1351. Count Negative Numbers in a Sorted Matrix.swift
//  https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/28.
//

final class LeetCode1351 {
  func countNegatives(_ grid: [[Int]]) -> Int {
    var count = 0
    let m = grid.count
    let n = grid[0].count

    var row = m - 1
    var col = 0

    while row >= 0 && col < n {
      if grid[row][col] < 0 {
        count += n - col
        row -= 1
        continue
      }

      col += 1
    }

    return count
  }
}
