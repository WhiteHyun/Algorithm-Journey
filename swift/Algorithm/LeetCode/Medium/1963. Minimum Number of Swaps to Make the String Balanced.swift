//
//  1963. Minimum Number of Swaps to Make the String Balanced.swift
//  https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/08.
//

final class LeetCode1963 {
  func minSwaps(_ s: String) -> Int {
    var stack: [Character] = []

    for element in s {
      if !stack.isEmpty, stack.last == "[", element == "]" {
        stack.removeLast()
        continue
      }
      stack.append(element)
    }

    if stack.isEmpty { return 0 }

    return stack.count == 2 ? 1 : (stack.count >> 1 + 1) >> 1
  }
}
