//
//  11404. Floyd.swift
//  https://www.acmicpc.net/problem/11404
//  Algorithm
//
//  Created by 홍승현 on 2024/05/16.
//

import Foundation

final class BOJ11404 {
  // MARK: - O(n^3) Runtime: 192 ms / Memory: ≈ 72.09 MB

  func floyd(_ n: Int, _ paths: [(source: Int, destination: Int, cost: Int)]) -> [[Int]] {
    var graph: [[Int]] = .init(repeating: .init(repeating: 0, count: n), count: n)

    for path in paths {
      let s = path.source - 1
      let d = path.destination - 1
      let cost = path.cost
      graph[s][d] = min(graph[s][d] == 0 ? .max : graph[s][d], cost)
    }

    for stopBy in 0 ..< n {
      for start in 0 ..< n where start != stopBy {
        for destination in 0 ..< n where destination != stopBy && destination != start && graph[start][stopBy] != 0 && graph[stopBy][destination] != 0 {
          graph[start][destination] = min(graph[start][destination] == 0 ? .max : graph[start][destination], graph[start][stopBy] + graph[stopBy][destination])
        }
      }
    }

    return graph
  }
}
