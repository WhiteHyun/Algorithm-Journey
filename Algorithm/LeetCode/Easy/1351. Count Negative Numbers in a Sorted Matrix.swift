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
    let n = grid[0].count

    for i in grid.indices {
      var left = 0
      var right = n
      while left < right {
        let mid = (left + right) / 2
        if grid[i][mid] < 0 {
          right = mid
        } else {
          left = mid + 1
        }
      }

      count += n - left
    }

    return count
  }
}
