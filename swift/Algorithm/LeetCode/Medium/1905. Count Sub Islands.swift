//
//  1905. Count Sub Islands.swift
//  https://leetcode.com/problems/count-sub-islands/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/28.
//

final class LeetCode1905 {
  func countSubIslands(_ grid1: [[Int]], _ grid2: [[Int]]) -> Int {
    let m = grid2.count
    let n = grid2[0].count
    var count = 0

    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: n), count: m)

    for i in 0 ..< m {
      for j in 0 ..< n {
        guard !visited[i][j], grid2[i][j] == 1, grid1[i][j] == 1 else {
          continue
        }
        visited[i][j] = true
        var stack: [(Int, Int)] = [(i, j)]
        var isSubIsland = true

        while let (x, y) = stack.popLast() {
          for (dx, dy) in [(1, 0), (-1, 0), (0, 1), (0, -1)] {
            let nx = x + dx
            let ny = y + dy

            guard 0 ..< m ~= nx,
                  0 ..< n ~= ny,
                  visited[nx][ny] == false,
                  grid2[nx][ny] == 1
            else { continue }

            if isSubIsland, grid1[nx][ny] != 1 { isSubIsland = false }
            visited[nx][ny] = true
            stack.append((nx, ny))
          }
        }

        if isSubIsland { count += 1 }
      }
    }

    return count
  }
}
