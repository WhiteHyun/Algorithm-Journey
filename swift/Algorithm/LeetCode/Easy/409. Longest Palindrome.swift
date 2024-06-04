//
//  409. Longest Palindrome.swift
//  https://leetcode.com/problems/longest-palindrome/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/04.
//

import Foundation

final class LeetCode409 {
  func longestPalindrome(_ s: String) -> Int {
    Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +).values.reduce(0) { partialResult, value in
      if value == 1, partialResult & 1 == 0 {
        partialResult + 1
      } else if value & 1 == 1, partialResult & 1 == 1 {
        partialResult + value - 1
      } else {
        partialResult + value
      }
    }
  }
}
