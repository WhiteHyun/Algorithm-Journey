//
//  1916. Finding the minimum cost.swift
//  https://www.acmicpc.net/problem/1916
//  Algorithm
//
//  Created by 홍승현 on 2024/05/07.
//

// MARK: - BOJ1916

final class BOJ1916 {
  func minimumCost(_ n: Int, _ source: Int, _ destination: Int, _ array: [(start: Int, destination: Int, cost: Int)]) -> Int {
    var graph: [[(Int, Int)]] = .init(repeating: .init(), count: n)
    var answer: [Int] = .init(repeating: .max, count: n)
    var pq: Heap<(vertex: Int, cost: Int)> = .init { $0.cost < $1.cost }

    for (start, destination, cost) in array {
      graph[start - 1].append((destination - 1, cost))
    }

    pq.insert((source - 1, 0))
    answer[source - 1] = 0

    while let (vertex, cost) = pq.remove() {
      if answer[vertex] != cost { continue }

      for (neighbor, c) in graph[vertex] {
        let newCost = c + cost
        if newCost < answer[neighbor] {
          pq.insert((neighbor, newCost))
          answer[neighbor] = newCost
        }
      }
    }
    return answer[destination - 1]
  }
}
