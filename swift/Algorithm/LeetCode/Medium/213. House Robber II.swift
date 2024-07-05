//
//  213. House Robber II.swift
//  https://leetcode.com/problems/house-robber-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/06.
//

final class LeetCode213 {
  func rob(_ nums: [Int]) -> Int {
    if nums.count < 3 { return nums.max()! }
    var current = 0
    var previous = 0
    for element in nums.dropLast() {
      (previous, current) = (current, max(element + previous, current))
    }

    var current2 = 0
    var previous2 = 0

    for element in nums.dropFirst() {
      (previous2, current2) = (current2, max(element + previous2, current2))
    }

    return max(current, previous, current2, previous2)
  }
}
