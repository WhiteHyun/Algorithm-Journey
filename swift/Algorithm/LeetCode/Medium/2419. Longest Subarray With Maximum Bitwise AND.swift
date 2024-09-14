//
//  2419. Longest Subarray With Maximum Bitwise AND.swift
//  https://leetcode.com/problems/longest-subarray-with-maximum-bitwise-and/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/14.
//

final class LeetCode2419 {
  func longestSubarray(_ numbers: [Int]) -> Int {
    var currentMax = 0
    var count = 0
    var result = 0
    for number in numbers {
      if currentMax > number {
        count = 0
      } else if currentMax < number {
        result = 0
        count = 1
        currentMax = number
      } else {
        count += 1
      }

      result = max(result, count)
    }
    return result
  }
}
