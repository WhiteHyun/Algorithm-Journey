//
//  1514. Path with Maximum Probability.swift
//  https://leetcode.com/problems/path-with-maximum-probability/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/27.
//

final class LeetCode1514 {
  func maxProbability(
    _ n: Int,
    _ edges: [[Int]],
    _ succProb: [Double],
    _ startNode: Int,
    _ endNode: Int,
  ) -> Double {
    var distances: [Double] = .init(repeating: 0, count: n)
    distances[startNode] = 1

    for _ in 0 ..< n - 1 {
      var updated = false
      for (i, edge) in edges.enumerated() {
        let u = edge[0]
        let v = edge[1]
        if distances[u] * succProb[i] > distances[v] {
          distances[v] = distances[u] * succProb[i]
          updated = true
        }
        if distances[v] * succProb[i] > distances[u] {
          distances[u] = distances[v] * succProb[i]
          updated = true
        }
      }
      if !updated { break }
    }

    return distances[endNode]
  }
}
