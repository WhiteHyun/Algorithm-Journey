//
//  70. Climbing Stairs.swift
//  https://leetcode.com/problems/climbing-stairs/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/10.
//

import Foundation

final class LeetCode70 {
  func climbStairs(_ n: Int) -> Int {
    var prevWays = 1
    var prevPrevWays = 1
    for _ in stride(from: 2, through: n, by: 1) {
      (prevWays, prevPrevWays) = (prevPrevWays, prevWays + prevPrevWays)
    }
    return prevPrevWays
  }
}
