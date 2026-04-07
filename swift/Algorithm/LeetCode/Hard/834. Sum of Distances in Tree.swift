//
//  834. Sum of Distances in Tree.swift
//  https://leetcode.com/problems/sum-of-distances-in-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/28.
//

import Foundation

final class LeetCode834 {
  func sumOfDistancesInTree(_ n: Int, _ edges: [[Int]]) -> [Int] {
    var graph: [[Int]] = Array(repeating: [], count: n)
    var distances: [Int] = Array(repeating: 0, count: n)
    var subtreeSizes: [Int] = Array(repeating: 1, count: n)

    // 그래프 구성
    for edge in edges {
      let (u, v) = (edge[0], edge[1])
      graph[u].append(v)
      graph[v].append(u)
    }

    /// DFS 함수
    func dfs(_ node: Int, _ parent: Int) {
      for child in graph[node] where child != parent {
        dfs(child, node)
        distances[node] += distances[child] + subtreeSizes[child]
        subtreeSizes[node] += subtreeSizes[child]
      }
    }

    /// 결과 업데이트 함수
    func updateDistances(_ node: Int, _ parent: Int) {
      for child in graph[node] where child != parent {
        distances[child] = distances[node] - subtreeSizes[child] + (n - subtreeSizes[child])
        updateDistances(child, node)
      }
    }

    // 루트 노드(0번 노드)에서 DFS 수행
    dfs(0, -1)

    // 루트 노드에서 결과 업데이트
    updateDistances(0, -1)

    return distances
  }
}
