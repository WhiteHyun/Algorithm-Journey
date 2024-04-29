//
//  2997. Minimum Number of Operations to Make Array XOR Equal to K.swift
//  https://leetcode.com/problems/minimum-number-of-operations-to-make-array-xor-equal-to-k/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/29.
//

import Foundation

final class LeetCode2997 {
  func minOperations(_ nums: [Int], _ k: Int) -> Int {
    (nums.reduce(0, ^) ^ k).nonzeroBitCount
  }
}
