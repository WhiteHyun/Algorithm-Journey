//
//  48. Rotate Image.swift
//  https://leetcode.com/problems/rotate-image/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/27.
//

final class LeetCode48 {
  func rotate(_ matrix: inout [[Int]]) {
    for depth in 0 ..< matrix.count >> 1 {
      let start = depth
      let end = matrix.count - 1 - depth

      var i = start
      var j = end

      while i < end {
        let temp = matrix[start][i] // top
        matrix[start][i] = matrix[j][start]
        matrix[j][start] = matrix[end][j]
        matrix[end][j] = matrix[i][end]
        matrix[i][end] = temp

        i += 1
        j -= 1
      }
    }
  }
}
