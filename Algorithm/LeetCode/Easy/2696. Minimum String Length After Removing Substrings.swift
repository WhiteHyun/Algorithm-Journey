//
//  2696. Minimum String Length After Removing Substrings.swift
//  https://leetcode.com/problems/minimum-string-length-after-removing-substrings/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/07.
//

final class LeetCode2696 {
  @_optimize(speed)
  func minLength(_ s: String) -> Int {
    var stack: [Character] = []

    for element in s {
      stack.append(element)
      if stack.count < 2 {
        continue
      }
      let endIndex = stack.endIndex - 1
      if stack[endIndex] == "B" && stack[endIndex - 1] == "A" || stack[endIndex] == "D" && stack[endIndex - 1] == "C" {
        stack.removeLast(2)
      }
    }

    return stack.count
  }
}
