//
//  260. Single Number III.swift
//  https://leetcode.com/problems/single-number-iii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/31.
//

import Foundation

final class LeetCode260 {
  func singleNumber(_ nums: [Int]) -> [Int] {
    let counter = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
    return counter
      .filter { $0.value & 1 == 1 }
      .map(\.key)
  }
}
