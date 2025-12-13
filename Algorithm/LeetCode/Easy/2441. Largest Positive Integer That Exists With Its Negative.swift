//
//  2441. Largest Positive Integer That Exists With Its Negative.swift
//  https://leetcode.com/problems/largest-positive-integer-that-exists-with-its-negative/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/02.
//

import Foundation

final class LeetCode2441 {
  func findMaxK(_ nums: [Int]) -> Int {
    var positiveSet: Set<Int> = []
    var negativeSet: Set<Int> = []
    for num in nums {
      if num < 0 {
        negativeSet.insert(-num)
      } else {
        positiveSet.insert(num)
      }
    }
    return positiveSet.intersection(negativeSet).max() ?? -1
  }
}
