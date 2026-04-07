//
//  921. Minimum Add to Make Parentheses Valid.swift
//  https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/09.
//

final class LeetCode921 {
  func minAddToMakeValid(_ s: String) -> Int {
    var stack: [Character] = []

    for element in s {
      if !stack.isEmpty, stack.last! == "(", element == ")" {
        stack.removeLast()
        continue
      }
      stack.append(element)
    }

    return stack.count
  }
}
