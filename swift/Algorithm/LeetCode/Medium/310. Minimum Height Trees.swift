//
//  310. Minimum Height Trees
//  https://leetcode.com/problems/minimum-height-trees/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/23.
//

import Foundation

final class LeetCode310 {
  func findMinHeightTrees(_ n: Int, _ edges: [[Int]]) -> [Int] {
    guard n != 1 else { return [0] }
    var n = n
    var graph: [Set<Int>] = .init(repeating: .init(), count: n)

    for edge in edges {
      graph[edge[0]].insert(edge[1])
      graph[edge[1]].insert(edge[0])
    }

    var leaves: [Int] = graph.enumerated().filter { $0.element.count == 1 }.map(\.offset)

    while n > 2 {
      n -= leaves.count
      var newLeaves: [Int] = []
      for leaf in leaves {
        let adjacentNode = graph[leaf].popFirst()!
        graph[adjacentNode].remove(leaf)
        if graph[adjacentNode].count == 1 {
          newLeaves.append(adjacentNode)
        }
      }
      leaves = newLeaves
    }
    return leaves
  }
}
