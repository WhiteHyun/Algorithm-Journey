//
//  1590. Make Sum Divisible by P.swift
//  https://leetcode.com/problems/make-sum-divisible-by-p/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/03.
//

final class LeetCode1590 {
  func minSubarray(_ nums: [Int], _ p: Int) -> Int {
    let totalSum = nums.reduce(0) { ($0 + $1) % p }
    if totalSum == 0 { return 0 }

    var prefixSum = 0
    var lastSeen: [Int: Int] = [0: -1]
    var minLength = nums.count

    for (index, num) in nums.enumerated() {
      prefixSum = (prefixSum + num) % p
      let target = (prefixSum - totalSum + p) % p
      if let lastIndex = lastSeen[target] {
        minLength = min(minLength, index - lastIndex)
      }
      lastSeen[prefixSum] = index
    }

    return minLength < nums.count ? minLength : -1
  }
}
