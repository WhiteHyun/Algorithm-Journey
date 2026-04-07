//
//  2097. Valid Arrangement of Pairs.swift
//  https://leetcode.com/problems/valid-arrangement-of-pairs/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/30.
//

final class LeetCode2097 {
  func validArrangement(_ pairs: [[Int]]) -> [[Int]] {
    // 각 노드의 out-edges를 저장할 딕셔너리
    var graph: [Int: [Int]] = [:]
    // 각 노드의 in-degree와 out-degree 차이를 저장
    var degree: [Int: Int] = [:]

    // 그래프 구성
    for pair in pairs {
      let u = pair[0], v = pair[1]
      graph[u, default: []].append(v)
      // out-degree 증가
      degree[u, default: 0] += 1
      // in-degree 감소
      degree[v, default: 0] -= 1
    }

    // 시작점 찾기
    var start = pairs[0][0] // 기본값
    for (node, diff) in degree {
      if diff == 1 { // out-degree가 in-degree보다 1 큰 노드
        start = node
        break
      }
    }

    var result: [[Int]] = []

    /// DFS로 오일러 경로 찾기
    func dfs(_ node: Int) {
      while let next = graph[node]?.popLast() {
        dfs(next)
        result.append([node, next])
      }
    }

    dfs(start)

    // 결과 뒤집기 (DFS는 역순으로 경로를 만듦)
    return result.reversed()
  }
}
