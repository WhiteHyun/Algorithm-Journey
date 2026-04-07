//
//  1072. Flip Columns For Maximum Number of Equal Rows.swift
//  https://leetcode.com/problems/flip-columns-for-maximum-number-of-equal-rows/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/22.
//

final class LeetCode1072 {
  func maxEqualRowsAfterFlips(_ matrix: [[Int]]) -> Int {
    var counter: [[Int]: Int] = [:]

    for row in matrix {
      // row[0]이 0이면 그대로, 1이면 모든 비트 반전
      let key = row.map { $0 ^ row[0] }
      counter[key, default: 0] += 1
    }

    return counter.values.max() ?? 0
  }
}
