//
//  2109. Adding Spaces to a String.swift
//  https://leetcode.com/problems/adding-spaces-to-a-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/12/03.
//

final class LeetCode2109 {
  func addSpaces(_ s: String, _ spaces: [Int]) -> String {
    var result = ""
    result.reserveCapacity(s.count + spaces.count)

    var pointer = 0

    for (index, element) in s.enumerated() {
      if pointer < spaces.count, index == spaces[pointer] {
        pointer += 1
        result.append(" ")
      }
      result.append(element)
    }

    return result
  }
}
