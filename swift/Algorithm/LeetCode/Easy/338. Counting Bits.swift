//
//  338. Counting Bits.swift
//  https://leetcode.com/problems/counting-bits/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/19.
//

import Foundation

final class LeetCode338 {
  func countBits(_ n: Int) -> [Int] {
    (0 ... n).map(\.nonzeroBitCount)
  }

  func countBits2(_ n: Int) -> [Int] {
    var array: [Int] = .init(repeating: 0, count: n + 1)
    for i in stride(from: 1, through: n, by: 1) {
      array[i] = array[i >> 1] + (i & 1)
    }
    return array
  }
}
