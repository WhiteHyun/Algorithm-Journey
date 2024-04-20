//
//  2103. Find All Groups of Farmland
//  https://leetcode.com/problems/find-all-groups-of-farmland/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/20.
//

import Foundation

// MARK: - LeetCodeSolution2103

final class LeetCodeSolution2103 {
  func findFarmland(_ land: [[Int]]) -> [[Int]] {
    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: land[0].count), count: land.count)
    var answer: [[Int]] = []

    func dfs(_ x: Int, _ y: Int) -> [Int] {
      var maxX = x
      var maxY = y

      func explore(_ x: Int, _ y: Int) {
        guard land.indices ~= x, land[x].indices ~= y, visited[x][y] == false, land[x][y] == 1 else { return }
        visited[x][y] = true

        maxX = max(x, maxX)
        maxY = max(y, maxY)

        explore(x + 1, y)
        explore(x, y + 1)
      }

      explore(x, y)
      return [x, y, maxX, maxY]
    }

    for i in land.indices {
      for j in land[i].indices where visited[i][j] == false && land[i][j] == 1 {
        answer.append(dfs(i, j))
      }
    }

    return answer
  }
}
