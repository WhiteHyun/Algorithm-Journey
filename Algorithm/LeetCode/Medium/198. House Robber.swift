//
//  198. House Robber.swift
//  https://leetcode.com/problems/house-robber/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/06.
//

final class LeetCode198 {
  func rob(_ nums: [Int]) -> Int {
    var previous = 0
    var current = 0

    for element in nums {
      (previous, current) = (current, max(element + previous, current))
    }
    return max(previous, current)
  }
}
