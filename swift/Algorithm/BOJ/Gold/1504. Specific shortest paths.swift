//
//  1504. Specific shortest paths.swift
//  https://www.acmicpc.net/problem/1504
//  Algorithm
//
//  Created by 홍승현 on 2024/05/24.
//

// MARK: - BOJ1504

final class BOJ1504 {
  private typealias Edge = (to: Int, weight: Int)
  private typealias Graph = [Int: [Edge]]

  private var graph: Graph = [:]

  private func dijkstra(_ n: Int, _ start: Int) -> [Int] {
    var distances: [Int] = .init(repeating: .max, count: n + 1)
    distances[start] = 0

    var heap: Heap<(Int, Int)> = .init { $0.1 > $1.1 }
    heap.insert((start, 0))

    while let (current, distance) = heap.remove(), distance == distances[current] {
      for edge in graph[current] ?? [] {
        let newDistance = distance + edge.weight
        if newDistance < distances[edge.to] {
          distances[edge.to] = newDistance
          heap.insert((edge.to, newDistance))
        }
      }
    }

    return distances
  }

  private func setup(_ paths: [(Int, Int, Int)]) {
    for (ver1, ver2, distance) in paths {
      graph[ver1, default: []].append((ver2, distance))
      graph[ver2, default: []].append((ver1, distance))
    }
  }

  func solution(_ n: Int, _ stopBy: [Int], _ paths: [(Int, Int, Int)]) -> Int {
    guard paths.isEmpty == false else { return -1 }
    setup(paths)

    let dist = dijkstra(n, 1)
    let distV1 = dijkstra(n, stopBy[0])
    let distV2 = dijkstra(n, stopBy[1])

    let isPath1Possible = dist[stopBy[0]] != Int.max && distV1[stopBy[1]] != Int.max && distV2[n] != Int.max
    let isPath2Possible = dist[stopBy[1]] != Int.max && distV2[stopBy[0]] != Int.max && distV1[n] != Int.max

    if !isPath1Possible, !isPath2Possible {
      return -1
    }

    var minPath = Int.max

    if isPath1Possible {
      let path1 = dist[stopBy[0]] + distV1[stopBy[1]] + distV2[n]
      minPath = min(minPath, path1)
    }

    if isPath2Possible {
      let path2 = dist[stopBy[1]] + distV2[stopBy[0]] + distV1[n]
      minPath = min(minPath, path2)
    }

    return minPath
  }
}
