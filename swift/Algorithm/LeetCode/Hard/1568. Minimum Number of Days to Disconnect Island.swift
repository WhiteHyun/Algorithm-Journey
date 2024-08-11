//
//  1568. Minimum Number of Days to Disconnect Island.swift
//  https://leetcode.com/problems/minimum-number-of-days-to-disconnect-island/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/11.
//

// MARK: - Point

private struct Point: Hashable {
  let x: Int
  let y: Int
}

// MARK: - LeetCode1568

final class LeetCode1568 {
  func minDays(_ grid: [[Int]]) -> Int {
    var land = 0
    var matrix = grid

    var visited: Set<Point> = []

    func dfs(_ i: Int, _ j: Int, _ visited: inout Set<Point>) {
      for (dx, dy) in [(-1, 0), (1, 0), (0, -1), (0, 1)] {
        let nx = i + dx
        let ny = j + dy
        guard matrix.indices ~= nx,
              matrix[nx].indices ~= ny,
              visited.contains(.init(x: nx, y: ny)) == false,
              matrix[nx][ny] == 1
        else {
          continue
        }
        visited.insert(.init(x: nx, y: ny))
        dfs(nx, ny, &visited)
      }
    }

    // check whether the grid is already disconnected or not
    for i in matrix.indices {
      for j in matrix[i].indices where visited.contains(.init(x: i, y: j)) == false && matrix[i][j] == 1 {
        visited.insert(.init(x: i, y: j))
        dfs(i, j, &visited)
        land += 1
      }
    }

    if land != 1 { return 0 }

    for point in visited {
      matrix[point.x][point.y] = 0
      var count = 0
      var tempVisited: Set<Point> = []

      for i in matrix.indices {
        for j in matrix[i].indices where tempVisited.contains(.init(x: i, y: j)) == false && matrix[i][j] == 1 {
          tempVisited.insert(.init(x: i, y: j))
          dfs(i, j, &tempVisited)
          count += 1
        }
      }

      if count != 1 { return 1 }
      matrix[point.x][point.y] = 1
    }

    return 2
  }
}
