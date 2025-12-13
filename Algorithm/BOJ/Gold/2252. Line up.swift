//
//  2252. Line up.swift
//  https://www.acmicpc.net/problem/2252
//  Algorithm
//
//  Created by 홍승현 on 2024/05/13.
//

import Foundation

final class BOJ2252 {
  func solution(_ studentsCount: Int, _ compares: [[Int]]) -> [Int] {
    var graph: [[Int]] = .init(repeating: [], count: studentsCount + 1)
    var inDegree: [Int] = .init(repeating: 0, count: studentsCount + 1)

    for edge in compares {
      graph[edge[0]].append(edge[1])
      inDegree[edge[1]] += 1
    }

    var result: [Int] = []
    var queue: [Int] = []

    for i in 1 ... studentsCount where inDegree[i] == 0 {
      queue.append(i)
    }

    while !queue.isEmpty {
      let current = queue.removeFirst()
      result.append(current)
      for next in graph[current] {
        inDegree[next] -= 1
        if inDegree[next] == 0 {
          queue.append(next)
        }
      }
    }

    return result
  }
}
