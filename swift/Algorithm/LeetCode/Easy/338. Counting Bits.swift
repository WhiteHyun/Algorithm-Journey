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
}
