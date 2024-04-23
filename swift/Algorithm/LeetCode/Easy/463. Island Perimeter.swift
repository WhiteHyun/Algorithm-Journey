//
//  463. Island Perimeter
//  https://leetcode.com/problems/island-perimeter/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/18.
//

import Foundation

final class LeetCode463 {
  func islandPerimeter(_ grid: [[Int]]) -> Int {
    var perimeter = 0

    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]

    for i in grid.indices {
      for j in grid[i].indices where grid[i][j] == 1 {
        var surface = 0

        for index in dx.indices {
          let x = i + dx[index]
          let y = j + dy[index]
          if grid[safe: x]?[safe: y] == 1 {
            surface += 1
          }
        }
        perimeter += 4 - surface
      }
    }

    return perimeter
  }
}
