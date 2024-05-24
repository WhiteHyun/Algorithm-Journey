//
//  268. Missing Number.swift
//  https://leetcode.com/problems/missing-number/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/24.
//

import Foundation

final class LeetCode268 {
  func missingNumber(_ nums: [Int]) -> Int {
    (0 ... nums.count).reduce(0, +) - nums.reduce(0, +)
  }
}
