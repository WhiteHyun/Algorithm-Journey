//
//  1829. Maximum XOR for Each Query.swift
//  https://leetcode.com/problems/maximum-xor-for-each-query/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/08.
//

final class LeetCode1829 {
  func getMaximumXor(_ nums: [Int], _ maximumBit: Int) -> [Int] {
    let targetNumber = 1 << maximumBit - 1
    var number = 0
    let n = nums.count
    var result: [Int] = .init(repeating: 0, count: n)

    for i in nums.indices {
      number ^= nums[i]
      result[n - i - 1] = number ^ targetNumber
    }

    return result
  }
}
