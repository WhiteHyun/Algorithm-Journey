//
//  1219. Path with Maximum Gold.swift
//  https://leetcode.com/problems/path-with-maximum-gold/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/14.
//

import Foundation

final class LeetCode1219 {
  // MARK: - DFS. Runtime: 320 ms / Memory: 15.52 MB

  func getMaximumGold(_ grid: [[Int]]) -> Int {
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: grid[0].count), count: grid.count)

    var maximumGold = 0
    var candidates: [(x: Int, y: Int)] = []
    for i in grid.indices {
      for j in grid[i].indices {
        if grid[i][j] != 0 {
          candidates.append((i, j))
        } else {
          visited[i][j] = true
        }
      }
    }

    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]

    func bfs(i: Int, j: Int, value: Int) {
      maximumGold = max(maximumGold, value)

      for (x, y) in zip(dx, dy) where grid.indices ~= x + i && grid[0].indices ~= j + y && visited[x + i][y + j] == false {
        visited[x + i][y + j] = true
        bfs(i: x + i, j: y + j, value: value + grid[x + i][y + j])
        visited[x + i][y + j] = false
      }
    }

    for (x, y) in candidates {
      visited[x][y] = true
      bfs(i: x, j: y, value: grid[x][y])
      visited[x][y] = false
    }

    return maximumGold
  }
}
