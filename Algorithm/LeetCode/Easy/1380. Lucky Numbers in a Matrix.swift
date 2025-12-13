//
//  1380. Lucky Numbers in a Matrix.swift
//  https://leetcode.com/problems/lucky-numbers-in-a-matrix/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/19.
//

final class LeetCode1380 {
  func luckyNumbers(_ matrix: [[Int]]) -> [Int] {
    matrix.compactMap { row in
      let columnIndex = row.indices.min(by: { row[$0] < row[$1] }) ?? 0
      let candidate = row[columnIndex]
      return matrix
        .allSatisfy { $0[columnIndex] <= candidate } ? candidate : nil
    }
  }
}
