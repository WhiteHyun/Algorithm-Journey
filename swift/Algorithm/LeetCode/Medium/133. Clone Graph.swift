//
//  133. Clone Graph.swift
//  https://leetcode.com/problems/clone-graph/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/28.
//

final class LeetCode133 {
  var cache: [Int: Node] = [:]

  func cloneGraph(_ originalNode: Node?) -> Node? {
    guard let originalNode
    else {
      return nil
    }

    guard cache[originalNode.val] == nil
    else { return cache[originalNode.val]! }

    let node = Node(originalNode.val)
    cache[originalNode.val] = node

    node.neighbors = originalNode.neighbors.map(cloneGraph)

    return node
  }
}
