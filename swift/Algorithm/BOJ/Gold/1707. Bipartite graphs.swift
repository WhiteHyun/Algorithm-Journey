//
//  1707. Bipartite graphs.swift
//  https://www.acmicpc.net/problem/1707
//  Algorithm
//
//  Created by 홍승현 on 2024/05/29.
//

final class BOJ1707 {
  func isBipartite(_ vertexNumber: Int, _ edges: [(Int, Int)]) -> Bool {
    var graph: [[Int]] = .init(repeating: [], count: vertexNumber)
    var colors: [Int] = .init(repeating: 0, count: vertexNumber)

    for edge in edges {
      graph[edge.0 - 1].append(edge.1 - 1)
      graph[edge.1 - 1].append(edge.0 - 1)
    }

    for vertex in graph.indices {
      if colors[vertex] == 0 {
        let queue: Queue<(Int, Int)> = .init()
        queue.enqueue((vertex, 1))
        colors[vertex] = 1

        while let (v, color) = queue.dequeue() {
          for u in graph[v] {
            if colors[u] == 0 {
              colors[u] = -color
              queue.enqueue((u, -color))
            } else if colors[u] == color {
              return false
            }
          }
        }
      }
    }

    return true
  }
}
