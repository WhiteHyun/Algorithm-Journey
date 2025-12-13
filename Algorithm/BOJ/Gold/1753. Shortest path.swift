//
//  1753. Shortest path.swift
//  https://www.acmicpc.net/problem/1753
//  Algorithm
//
//  Created by 홍승현 on 2024/05/03.
//

// MARK: - BOJ1753

final class BOJ1753 {
  func shortestPath(_ vertexCount: Int, _ startVertex: Int, _ edges: [(u: Int, v: Int, w: Int)]) -> [Int] {
    var graph: [[(Int, Int)]] = .init(repeating: .init(), count: vertexCount)
    var distances: [Int] = .init(repeating: .max, count: vertexCount)
    var pq: Heap<(Int, Int)> = .init { $0.1 < $1.1 }

    for edge in edges {
      graph[edge.u - 1].append((edge.v - 1, edge.w))
    }

    pq.insert((startVertex - 1, 0))
    distances[startVertex - 1] = 0

    while let (vertex, distance) = pq.remove() {
      if distance > distances[vertex] { continue }

      for (neighbor, weight) in graph[vertex] {
        let newDistance = distance + weight
        if newDistance < distances[neighbor] {
          distances[neighbor] = newDistance
          pq.insert((neighbor, newDistance))
        }
      }
    }

    return distances
  }
}
