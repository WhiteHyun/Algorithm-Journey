//
//  128. Longest Consecutive Sequence.swift
//  https://leetcode.com/problems/longest-consecutive-sequence/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/01.
//

import Foundation

final class LeetCode128 {
  func longestConsecutive(_ nums: [Int]) -> Int {
    let set = Set(nums)
    var best = 0
    for number in set where !set.contains(number - 1) {
      var next = number + 1
      while set.contains(next) {
        next += 1
      }
      if best < next - number {
        best = next - number
      }
    }

    return best
  }
}
