//
//  3243. Shortest Distance After Road Addition Queries I.swift
//  https://leetcode.com/problems/shortest-distance-after-road-addition-queries-i/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/27.
//

final class LeetCode3243 {
  func shortestDistanceAfterQueries(_ n: Int, _ queries: [[Int]]) -> [Int] {
    var graph: [[Int]] = Array(1 ... n).map { [$0] }

    return queries.map { query in
      let start = query[0]
      let end = query[1]
      graph[start].append(end)

      // find shortest
      var count = 0
      var visited: [Bool] = .init(repeating: false, count: n)
      var queue: [Int] = [0]
      while !queue.contains(n - 1) {
        queue = queue
          .flatMap { graph[$0] }
          .filter { !visited[$0] }

        for node in queue {
          visited[node] = true
        }
        count += 1
      }

      return count
    }
  }
}
