//
//  2290. Minimum Obstacle Removal to Reach Corner.swift
//  https://leetcode.com/problems/minimum-obstacle-removal-to-reach-corner/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/28.
//

final class LeetCode2290 {
  func minimumObstacles(_ grid: [[Int]]) -> Int {
    let m = grid.count
    let n = grid[0].count

    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: n), count: m)
    visited[0][0] = true

    var heap: Heap<(x: Int, y: Int, count: Int)> = .init { $0.count < $1.count }
    heap.insert((0, 0, 0))

    let distance: [(dx: Int, dy: Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    while let (x, y, count) = heap.remove() {
      for (dx, dy) in distance {
        let newX = x + dx
        let newY = y + dy

        if newX == m - 1, newY == n - 1 {
          return count
        }

        guard 0 ..< m ~= newX,
              0 ..< n ~= newY,
              !visited[newX][newY]
        else {
          continue
        }

        let newCount = grid[newX][newY] == 1 ? count + 1 : count
        visited[newX][newY] = true
        heap.insert((newX, newY, newCount))
      }
    }

    return -1
  }
}
