//
//  2373. Largest Local Values in a Matrix.swift
//  https://leetcode.com/problems/largest-local-values-in-a-matrix/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/12.
//

import Foundation

final class LeetCode2373 {
  func largestLocal(_ grid: [[Int]]) -> [[Int]] {
    var answer: [[Int]] = []

    for i in 0 ..< grid.count - 2 {
      answer.append([])
      for j in 0 ..< grid[i].count - 2 {
        answer[i].append(grid[i ..< i + 3].flatMap { $0[j ..< j + 3] }.max()!)
      }
    }

    return answer
  }
}
