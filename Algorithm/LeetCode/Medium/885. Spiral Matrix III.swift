//
//  885. Spiral Matrix III.swift
//  https://leetcode.com/problems/spiral-matrix-iii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/08.
//

final class LeetCode885 {
  func spiralMatrixIII(_ rows: Int, _ cols: Int, _ rStart: Int, _ cStart: Int) -> [[Int]] {
    var visitedCount = rows * cols - 1
    var result: [[Int]] = [[rStart, cStart]]

    var cycle = 0
    var row = rStart
    var col = cStart
    while visitedCount > 0 {
      col += 1
      if 0 ..< rows ~= row, 0 ..< cols ~= col {
        result.append([row, col])
        visitedCount -= 1
      }

      // down
      for _ in 0 ..< 2 * cycle + 1 {
        row += 1
        if 0 ..< rows ~= row, 0 ..< cols ~= col {
          result.append([row, col])
          visitedCount -= 1
        }
      }

      // left
      for _ in 0 ..< 2 * cycle + 2 {
        col -= 1
        if 0 ..< rows ~= row, 0 ..< cols ~= col {
          result.append([row, col])
          visitedCount -= 1
        }
      }

      // up
      for _ in 0 ..< 2 * cycle + 2 {
        row -= 1
        if 0 ..< rows ~= row, 0 ..< cols ~= col {
          result.append([row, col])
          visitedCount -= 1
        }
      }

      // right
      for _ in 0 ..< 2 * cycle + 2 {
        col += 1
        if 0 ..< rows ~= row, 0 ..< cols ~= col {
          result.append([row, col])
          visitedCount -= 1
        }
      }

      cycle += 1
    }
    return result
  }
}
