//
//  2976. Minimum Cost to Convert String I.swift
//  https://leetcode.com/problems/minimum-cost-to-convert-string-i/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/28.
//

final class LeetCode2976 {
  func minimumCost(_ source: String, _ target: String, _ original: [Character], _ changed: [Character], _ cost: [Int]) -> Int {
    var graph: [[Int]] = .init(repeating: .init(repeating: .max, count: 26), count: 26)

    for i in 0 ..< 26 {
      graph[i][i] = 0
    }

    for (o, (ch, c)) in zip(original, zip(changed, cost)) {
      let originalIndex = Int(o.asciiValue!) - 97
      let changedIndex = Int(ch.asciiValue!) - 97
      if graph[originalIndex][changedIndex] > c {
        graph[originalIndex][changedIndex] = c
      }
    }

    for middle in 0 ..< 26 {
      for start in 0 ..< 26 {
        for end in 0 ..< 26 where graph[start][middle].addingReportingOverflow(graph[middle][end]).overflow == false && graph[start][end] > graph[start][middle] + graph[middle][end] {
          graph[start][end] = graph[start][middle] + graph[middle][end]
        }
      }
    }

    var cost = 0

    for (s, t) in zip(source, target) where s != t {
      let sourceIndex = Int(s.asciiValue!) - 97
      let targetIndex = Int(t.asciiValue!) - 97
      if graph[sourceIndex][targetIndex] == .max { return -1 }

      cost += graph[sourceIndex][targetIndex]
    }

    return cost
  }
}
