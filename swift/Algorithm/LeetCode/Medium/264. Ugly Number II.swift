//
//  264. Ugly Number II.swift
//  https://leetcode.com/problems/ugly-number-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/18.
//

final class LeetCode264 {
  func nthUglyNumber(_ n: Int) -> Int {
    var dp = Array(repeating: 1, count: n)
    var i2 = 0
    var i3 = 0
    var i5 = 0

    for i in 1 ..< n {
      let next2 = dp[i2] * 2
      let next3 = dp[i3] * 3
      let next5 = dp[i5] * 5

      let nextUgly = min(next2, next3, next5)
      dp[i] = nextUgly

      if nextUgly == next2 { i2 += 1 }
      if nextUgly == next3 { i3 += 1 }
      if nextUgly == next5 { i5 += 1 }
    }

    return dp[n - 1]
  }
}
