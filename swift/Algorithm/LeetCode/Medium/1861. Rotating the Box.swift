//
//  1861. Rotating the Box.swift
//  https://leetcode.com/problems/rotating-the-box/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/23.
//

final class LeetCode1861 {
  func rotateTheBox(_ box: [[Character]]) -> [[Character]] {
    let m = box.count
    let n = box[0].count
    var rotatedBox: [[Character]] = .init(repeating: .init(repeating: "#", count: m), count: n)

    for row in box.indices {
      for col in box[row].indices {
        rotatedBox[col][m - row - 1] = box[row][col]
      }
    }

    // A stone '#'
    // A stationary obstacle '*'
    // Empty '.'

    for col in 0 ..< m {
      var emptySpace = -1
      for row in (0 ..< n).reversed() {
        switch rotatedBox[row][col] {
        case ".":
          if emptySpace == -1 { emptySpace = row }
        case "*":
          emptySpace = -1
        case "#":
          if emptySpace != -1 {
            rotatedBox[emptySpace][col] = "#"
            rotatedBox[row][col] = "."
            emptySpace -= 1
          }
        default:
          break
        }
      }
    }

    return rotatedBox
  }
}
