//
//  2045. Second Minimum Time to Reach Destination.swift
//  https://leetcode.com/problems/second-minimum-time-to-reach-destination/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/02.
//

final class LeetCode2045 {
  func secondMinimum(_ n: Int, _ edges: [[Int]], _ time: Int, _ change: Int) -> Int {
    var graph: [Int: Set<Int>] = [:]
    for edge in edges {
      graph[edge[0], default: []].insert(edge[1])
      graph[edge[1], default: []].insert(edge[0])
    }

    var visitedDictionary: [Int: Set<Int>] = [:]

    var minHeap: Heap<(edge: Int, time: Int)> = .init { $0.time < $1.time }

    minHeap.insert((1, 0))

    var secondMinimumValue = Int.max

    while let element = minHeap.remove() {
      if element.edge == n {
        if secondMinimumValue == .max {
          secondMinimumValue = element.time
        } else {
          return max(secondMinimumValue, element.time)
        }
      }

      // Every vertex pair is connected by at most one edge,
      // so we can guarantee that element.edge in graph is not nil.
      for otherEdge in graph[element.edge]! {
        if let visitedValue = visitedDictionary[otherEdge],
           visitedValue.count != 1 || visitedValue.first! == element.time {
          continue
        }
        let waitingTime = (element.time / change) & 1 == 1 ? change - element.time % change : 0
        minHeap.insert((otherEdge, element.time + time + waitingTime))
        visitedDictionary[otherEdge, default: []].insert(element.time)
      }
    }
    return secondMinimumValue
  }
}
