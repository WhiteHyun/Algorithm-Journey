//
//  20. Valid Parentheses.swift
//  https://leetcode.com/problems/valid-parentheses/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/04.
//

import Foundation

final class LeetCode20 {
  func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    for character in s {
      if "([{".contains(character) {
        stack.append(character)
        continue
      }
      if stack.isEmpty { return false }

      if character.asciiValue! &- stack.last!.asciiValue! > 2 {
        return false
      }

      stack.removeLast()
    }

    return stack.isEmpty
  }
}
