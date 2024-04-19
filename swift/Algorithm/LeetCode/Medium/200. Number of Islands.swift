//
//  200. Number of Islands
//  https://leetcode.com/problems/number-of-islands/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/19.
//

import Foundation

final class LeetCodeSolution200 {
  func numIslands(_ grid: [[Character]]) -> Int {
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: grid[0].count), count: grid.count)

    var stack: [(i: Int, j: Int)] = []

    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]

    var islandCount = 0

    for i in grid.indices {
      for j in grid[i].indices where grid[i][j] == "1" && visited[i][j] == false {
        stack.append((i, j))
        islandCount += 1

        while let (x, y) = stack.popLast() {
          for index in dx.indices {
            let positionX = x + dx[index]
            let positionY = y + dy[index]

            if grid[safe: positionX]?[safe: positionY] == "1", visited[positionX][positionY] == false {
              visited[positionX][positionY] = true
              stack.append((positionX, positionY))
            }
          }
        }
      }
    }

    return islandCount
  }
}
