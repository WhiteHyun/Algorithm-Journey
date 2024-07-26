//
//  1334. Find the City With the Smallest Number of Neighbors at a Threshold Distance.swift
//  https://leetcode.com/problems/find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/26.
//

final class LeetCode1334 {
  func findTheCity(_ n: Int, _ edges: [[Int]], _ distanceThreshold: Int) -> Int {
    var graph: [Int: [(to: Int, weight: Int)]] = [:]

    for edge in edges {
      graph[edge[0], default: []].append((edge[1], edge[2]))
      graph[edge[1], default: []].append((edge[0], edge[2]))
    }

    var target = 0
    var minCount = Int.max
    for vertex in 0 ..< n {
      var distances: [Int] = .init(repeating: .max, count: n)
      distances[vertex] = 0
      var heap: Heap<(Int, Int)> = .init { $0.1 < $1.1 }
      var tempCount = -1
      heap.insert((vertex, 0))
      while let (element, distance) = heap.remove() {
        if distance > distanceThreshold { break }
        if distance != distances[element] { continue }
        tempCount += 1
        if minCount < tempCount { break }
        for edge in graph[element] ?? [] {
          let newDistance = distance + edge.weight
          if newDistance < distances[edge.to] {
            distances[edge.to] = newDistance
            heap.insert((edge.to, newDistance))
          }
        }
      }

      if minCount > tempCount {
        target = vertex
        minCount = tempCount
      } else if minCount == tempCount, target < vertex {
        target = vertex
      }
    }

    return target
  }
}
