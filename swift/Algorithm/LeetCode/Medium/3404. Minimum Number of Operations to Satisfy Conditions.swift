//
//  3404. Minimum Number of Operations to Satisfy Conditions
//  https://leetcode.com/problems/minimum-number-of-operations-to-satisfy-conditions/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/21.
//

import Foundation

final class LeetCodeSolution3404 {
  func minimumOperations(_ grid: [[Int]]) -> Int {
    let m = grid[0].count
    let n = grid.count

    var frequencies: [[Int]] = .init(repeating: .init(repeating: n, count: 10), count: m)
    var dp: [[Int]] = .init(repeating: .init(repeating: Int.max, count: 10), count: m)

    for j in 0 ..< m {
      for i in 0 ..< n {
        frequencies[j][grid[i][j]] -= 1
      }
    }

    dp[0] = frequencies[0]
    for i in 0 ..< m - 1 {
      for j in 0 ... 9 {
        for k in 0 ... 9 where j != k {
          dp[i + 1][j] = min(dp[i + 1][j], dp[i][k] + frequencies[i + 1][j])
        }
      }
    }

    return dp[m - 1].min()!
  }
}
