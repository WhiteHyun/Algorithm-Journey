//
//  440. K-th Smallest in Lexicographical Order.swift
//  https://leetcode.com/problems/k-th-smallest-in-lexicographical-order/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/22.
//

final class LeetCode440 {
  func findKthNumber(_ n: Int, _ k: Int) -> Int {
    var current = 1
    var index = k - 1
    while index > 0 {
      let step = countSteps(n, current, current + 1)

      if step <= index {
        current += 1
        index -= step
      } else {
        current *= 10
        index -= 1
      }
    }
    return current
  }

  func countSteps(_ n: Int, _ prefix1: Int, _ prefix2: Int) -> Int {
    var steps = 0
    var prefix1 = prefix1
    var prefix2 = prefix2
    while prefix1 <= n {
      steps += min(n + 1, prefix2) - prefix1
      prefix1 *= 10
      prefix2 *= 10
    }
    return steps
  }
}
