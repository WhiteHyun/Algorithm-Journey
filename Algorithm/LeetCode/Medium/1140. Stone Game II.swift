//
//  1140. Stone Game II.swift
//  https://leetcode.com/problems/stone-game-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/20.
//

final class LeetCode1140 {
  func stoneGameII(_ piles: [Int]) -> Int {
    if piles.count <= 2 {
      return piles.reduce(0, +)
    }

    let n = piles.count
    var suffixSum = Array(repeating: 0, count: n + 1)
    var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: n)

    // Calculate suffix sum
    for i in stride(from: n - 1, through: 0, by: -1) {
      suffixSum[i] = suffixSum[i + 1] + piles[i]
    }

    // Fill dp array
    for i in stride(from: n - 1, through: 0, by: -1) {
      for m in stride(from: 1, through: n, by: 1) {
        if i + 2 * m >= n {
          dp[i][m] = suffixSum[i]
        } else {
          for x in 1 ... 2 * m {
            let opponentScore = dp[i + x][max(x, m)]
            dp[i][m] = max(dp[i][m], suffixSum[i] - opponentScore)
          }
        }
      }
    }

    return dp[0][1]
  }
}
