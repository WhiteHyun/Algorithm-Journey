//
//  133. Clone Graph.swift
//  https://leetcode.com/problems/clone-graph/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/28.
//

// MARK: - LeetCode133

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

// MARK: LeetCode133.Node

extension LeetCode133 {
  // MARK: - Node

  final class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
      self.val = val
      neighbors = []
    }
  }
}

// MARK: - LeetCode133.Node + Equatable

extension LeetCode133.Node: Equatable {
  static func == (lhs: LeetCode133.Node, rhs: LeetCode133.Node) -> Bool {
    lhs.val == rhs.val
  }
}

// MARK: - LeetCode133.Node + ExpressibleByArrayLiteral

extension LeetCode133.Node: ExpressibleByArrayLiteral {
  typealias ArrayLiteralElement = [Int]
  convenience init(arrayLiteral elements: ArrayLiteralElement...) {
    self.init(1)
    let n = elements.count
    if n == 0 { return }

    var nodes = [LeetCode133.Node]()
    for i in 1 ... n {
      if i == 1 {
        nodes.append(self)
      } else {
        nodes.append(LeetCode133.Node(i))
      }
    }

    for (index, adjacentList) in elements.enumerated() {
      for nodeIndex in adjacentList {
        nodes[index].neighbors.append(nodes[nodeIndex - 1])
      }
    }
  }
}
