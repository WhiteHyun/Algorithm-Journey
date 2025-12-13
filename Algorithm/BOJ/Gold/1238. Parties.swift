//
//  1238. Parties.swift
//  https://www.acmicpc.net/problem/1238
//  Algorithm
//
//  Created by 홍승현 on 2024/05/15.
//

import Foundation

final class BOJ1238 {
  func longestPath(_ n: Int, _ partyPlace: Int, _ paths: [(source: Int, destination: Int, cost: Int)]) -> Int {
    let x = partyPlace - 1

    var graph: [[Int]] = .init(repeating: .init(repeating: .max, count: n), count: n)
    for (source, destination, cost) in paths {
      graph[source - 1][destination - 1] = cost
    }
    var heap: Heap<(vertex: Int, cost: Int)> = .init(compareClosure: { $0.cost < $1.cost })

    for i in 0 ..< n where i != x && graph[x][i] != .max {
      heap.insert((i, graph[x][i]))
    }

    while let (vertex, cost) = heap.remove() {
      guard graph[x][vertex] == cost
      else {
        continue
      }

      for i in 0 ..< n where i != x && vertex != i && graph[vertex][i] != .max {
        let newCost = graph[vertex][i] + cost
        if graph[x][i] > newCost {
          graph[x][i] = newCost
          heap.insert((i, newCost))
        }
      }
    }

    for i in 0 ..< n where i != x && graph[i][x] != .max {
      heap.insert((i, graph[i][x]))
    }

    while let (vertex, cost) = heap.remove() {
      guard graph[vertex][x] == cost
      else {
        continue
      }

      for i in 0 ..< n where i != x && vertex != i && graph[i][vertex] != .max {
        let newCost = graph[i][vertex] + cost
        if graph[i][x] > newCost {
          graph[i][x] = newCost
          heap.insert((i, newCost))
        }
      }
    }

    var maximumValue = 0

    for i in 0 ..< n where i != x && maximumValue < graph[i][x] + graph[x][i] {
      maximumValue = graph[i][x] + graph[x][i]
    }

    return maximumValue
  }
}
