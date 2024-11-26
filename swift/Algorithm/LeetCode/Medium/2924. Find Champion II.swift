//
//  2924. Find Champion II.swift
//  https://leetcode.com/problems/find-champion-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/27.
//

final class LeetCode2924 {
  func findChampion(_ n: Int, _ edges: [[Int]]) -> Int {
    var visited: Set<Int> = []
    var champions: Set<Int> = []
    var graph: [Int: [Int]] = .init(uniqueKeysWithValues: zip(Array(0 ..< n), Array(repeating: [], count: n)))

    for edge in edges {
      graph[edge[0]]!.append(edge[1])
    }

    for (key, children) in graph {
      if !visited.contains(key) {
        champions.insert(key)
      } else {
        champions.remove(key)
      }

      for child in children {
        visited.insert(child)
        if champions.contains(child) {
          champions.remove(child)
        }
      }
    }

    return champions.count == 1 ? champions.popFirst()! : -1
  }
}
