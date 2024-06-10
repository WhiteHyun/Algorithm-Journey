//
//  1051. Height Checker.swift
//  https://leetcode.com/problems/height-checker/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/10.
//

final class LeetCode1051 {
  func heightChecker(_ heights: [Int]) -> Int {
    var check = 0
    for (origin, sorted) in zip(heights, heights.sorted()) where origin != sorted {
      check += 1
    }
    return check
  }
}
