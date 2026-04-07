//
//  861. Score After Flipping Matrix.swift
//  https://leetcode.com/problems/score-after-flipping-matrix/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/13.
//

import Foundation

final class LeetCode861 {
  // MARK: - Greedy. Time Complexity: O(n * m) -> Runtime: 4 ms / Memory: 15.5 MB

  /// https://leetcode.com/problems/score-after-flipping-matrix/solutions/143722/c-java-python-easy-and-concise/
  func matrixScore(_ grid: [[Int]]) -> Int {
    let m = grid.count
    let n = grid[0].count
    var result = 1 << (n - 1) * m
    for j in 1 ..< n {
      var count = 0
      for i in grid.indices where grid[i][j] == grid[i][0] {
        count += 1
      }
      result += max(count, m - count) * 1 << (n - 1 - j)
    }
    return result
  }

  // MARK: - 백트래킹 완전탐색. Time Complexity: O(2^(n * m)) -> Runtime: 185 ms / Memory: 15.7 MB

  func matrixScoreWithBackTrack(_ grid: [[Int]]) -> Int {
    var answer = Int.min
    var grid = grid

    func backTrack() {
      let value = sum(grid)
      if value <= answer {
        return
      }
      answer = value

      for i in grid.indices {
        grid[i] = grid[i].map { $0 ^ 1 }
        backTrack()
        grid[i] = grid[i].map { $0 ^ 1 }
      }

      for j in grid[0].indices {
        for i in grid.indices {
          grid[i][j] ^= 1
        }

        backTrack()

        for i in grid.indices {
          grid[i][j] ^= 1
        }
      }
    }

    backTrack()

    return answer
  }

  private func sum(_ grid: [[Int]]) -> Int {
    grid.reduce(0) { $0 + Int($1.compactMap(String.init).joined(), radix: 2)! }
  }
}
