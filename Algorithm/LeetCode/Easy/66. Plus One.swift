//
//  66. Plus One.swift
//  https://leetcode.com/problems/plus-one/description/
//  Algorithm
//
//  Created by 홍승현 on 2026/01/01.
//

final class LeetCode66 {
  func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    for i in stride(from: digits.endIndex - 1, through: 0, by: -1) {
      if digits[i] < 9 {
        digits[i] += 1
        return digits
      }
      digits[i] = 0
    }

    return [1] + digits
  }
}
