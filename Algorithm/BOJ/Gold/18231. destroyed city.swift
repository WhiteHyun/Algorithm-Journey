//
//  18231. destroyed city
//  https://www.acmicpc.net/problem/18231
//  Algorithm
//
//  Created by 홍승현 on 2024/04/23.
//

import Foundation

final class BOJ18231 {
  func solution(_ n: Int, _ edges: [[Int]], _ destroyed: Set<Int>) -> Set<Int> {
    let destroyed: Set<Int> = .init(destroyed.map { $0 - 1 })
    var graph: [Set<Int>] = .init(repeating: .init(), count: n)
    for edge in edges {
      graph[edge[0] - 1].insert(edge[1] - 1)
      graph[edge[1] - 1].insert(edge[0] - 1)
    }

    var targetNode: Set<Int> = []

    for node in destroyed where graph[node].subtracting(destroyed).isEmpty {
      targetNode.insert(node + 1)
    }
    // == Evaluate ==

    let evaluateNodes = targetNode.reduce(Set<Int>()) { partialResult, node in
      partialResult.union(graph[node - 1]).union([node - 1])
    }

    return evaluateNodes == destroyed ? targetNode : [-1]
  }
}
