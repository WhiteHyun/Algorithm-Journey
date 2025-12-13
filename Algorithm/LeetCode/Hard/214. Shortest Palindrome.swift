//
//  214. Shortest Palindrome.swift
//  https://leetcode.com/problems/shortest-palindrome/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/20.
//

import Foundation

final class LeetCode214 {
  func shortestPalindrome(_ s: String) -> String {
    let originalArray = Array(s)

    var largestPalindrome = 0

    // 26진수 숫자 설정
    var prefix = 0
    var suffix = 0
    var power = 1

    // null: 0, a: 1, b: 2, c: 3 ... z: 26
    for index in 0 ..< s.count {
      let char = Int(originalArray[index].asciiValue!) - 96
      prefix = (prefix * 27) % 1_000_000_007
      prefix = (prefix + char) % 1_000_000_007
      suffix = (suffix + char * power) % 1_000_000_007
      power = (power * 27) % 1_000_000_007
      if prefix == suffix {
        largestPalindrome = index + 1
      }
    }

    return s.suffix(s.count - largestPalindrome).reversed() + s
  }
}
