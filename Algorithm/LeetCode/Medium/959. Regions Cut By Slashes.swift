//
//  959. Regions Cut By Slashes.swift
//  https://leetcode.com/problems/regions-cut-by-slashes/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/10.
//

final class LeetCode959 {
  func regionsBySlashes(_ grid: [String]) -> Int {
    var matrix: [[Bool]] = .init(repeating: .init(repeating: false, count: grid.count * 3), count: grid.count * 3)
    var count = 0
    for i in grid.indices {
      let arr = Array(grid[i])
      for j in arr.indices where arr[j] != " " {
        if arr[j] == "/" {
          matrix[i * 3][j * 3 + 2] = true
          matrix[i * 3 + 1][j * 3 + 1] = true
          matrix[i * 3 + 2][j * 3] = true
        } else if arr[j] == "\\" {
          matrix[i * 3][j * 3] = true
          matrix[i * 3 + 1][j * 3 + 1] = true
          matrix[i * 3 + 2][j * 3 + 2] = true
        }
      }
    }

    for i in matrix.indices {
      for j in matrix[i].indices where matrix[i][j] == false {
        count += 1
        var stack: [(Int, Int)] = [(i, j)]
        matrix[i][j] = true

        while let (x, y) = stack.popLast() {
          for (dx, dy) in [(-1, 0), (1, 0), (0, -1), (0, 1)] {
            let nx = dx + x
            let ny = dy + y
            guard matrix.indices ~= nx,
                  matrix[nx].indices ~= ny,
                  matrix[nx][ny] == false
            else {
              continue
            }
            matrix[nx][ny] = true
            stack.append((nx, ny))
          }
        }
      }
    }

    return count
  }
}
