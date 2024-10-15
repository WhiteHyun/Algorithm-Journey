//
//  2938. Separate Black and White Balls.swift
//  https://leetcode.com/problems/separate-black-and-white-balls/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/15.
//

final class LeetCode2938 {
  func minimumSteps(_ s: String) -> Int {
    var steps = 0
    var whiteCount = 0

    for (index, element) in s.enumerated() where element == "0" {
      steps += index - whiteCount
      whiteCount += 1
    }

    return steps
  }
}
