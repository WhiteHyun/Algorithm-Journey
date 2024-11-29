//
//  2577. Minimum Time to Visit a Cell In a Grid.swift
//  https://leetcode.com/problems/minimum-time-to-visit-a-cell-in-a-grid/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/29.
//

final class LeetCode2577 {
  func minimumTime(_ grid: [[Int]]) -> Int {
    // 시작점에서 바로 이동할 수 없는 경우 early return
    if grid[0][1] > 1, grid[1][0] > 1 {
      return -1
    }

    var heap: Heap<(x: Int, y: Int, seconds: Int)> = .init {
      $0.seconds < $1.seconds
    }
    let directions: [(dx: Int, dy: Int)] = [(1, 0), (0, 1), (-1, 0), (0, -1)]
    var visited: [[Int]] = .init(repeating: .init(repeating: .max, count: grid[0].count), count: grid.count)
    visited[0][0] = 0

    heap.insert((x: 0, y: 0, seconds: 0))

    while let (x, y, seconds) = heap.remove() {
      if x == grid.count - 1, y == grid[0].count - 1 {
        return seconds
      }
      if visited[x][y] != seconds { continue }
      for direction in directions {
        let nx = x + direction.dx
        let ny = y + direction.dy

        guard grid.indices ~= nx,
              grid[0].indices ~= ny
        else {
          continue
        }

        let nextSeconds = max(seconds + 1, grid[nx][ny] + ((grid[nx][ny] - seconds) & 1 == 0 ? 1 : 0))
        if nextSeconds >= visited[nx][ny] { continue }
        visited[nx][ny] = nextSeconds
        heap.insert((nx, ny, nextSeconds))
      }
    }
    return -1
  }
}
