//
//  1520. Downhill.swift
//  https://www.acmicpc.net/problem/1520
//  Algorithm
//
//  Created by 홍승현 on 2024/05/18.
//

import Foundation

final class BOJ1520 {
  func solution(_ n: Int, _ m: Int, _ paths: [[Int]]) -> Int {
    var dp: [[Int]] = .init(repeating: .init(repeating: -1, count: m), count: n)

    func dfs(_ x: Int, _ y: Int) -> Int {
      if x == n - 1, y == m - 1 {
        return 1
      }

      if dp[x][y] != -1 {
        return dp[x][y]
      }

      dp[x][y] = 0

      for (dx, dy) in [(-1, 0), (1, 0), (0, -1), (0, 1)] {
        let nx = x + dx
        let ny = y + dy
        guard 0 ..< n ~= nx, 0 ..< m ~= ny, paths[nx][ny] < paths[x][y] else { continue }
        dp[x][y] += dfs(nx, ny)
      }

      return dp[x][y]
    }

    return dfs(0, 0)
  }
}
