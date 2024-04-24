//
//  1236. N-th Tribonacci Number.swift
//  https://leetcode.com/problems/n-th-tribonacci-number/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/24.
//

import Foundation

final class LeetCode1236 {
  func tribonacci(_ n: Int) -> Int {
    var dp: [Int] = .init(repeating: 0, count: 38)
    dp[0] = 0
    dp[1] = 1
    dp[2] = 1
    for i in 3 ..< dp.count {
      dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
    }
    return dp[n]
  }
}
