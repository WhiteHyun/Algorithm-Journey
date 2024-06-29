//
//  Node.swift
//  Algorithm
//
//  Created by 홍승현 on 6/28/24.
//

import Foundation

// MARK: - Node

final class Node {
  var val: Int
  var neighbors: [Node?]
  init(_ val: Int) {
    self.val = val
    neighbors = []
  }
}

// MARK: Equatable

extension Node: Equatable {
  static func == (lhs: Node, rhs: Node) -> Bool {
    lhs.val == rhs.val
  }
}

// MARK: ExpressibleByArrayLiteral

extension Node: ExpressibleByArrayLiteral {
  typealias ArrayLiteralElement = [Int]
  convenience init(arrayLiteral elements: ArrayLiteralElement...) {
    self.init(1)
    let n = elements.count
    if n == 0 { return }

    var nodes = [Node]()
    for i in 1 ... n {
      if i == 1 {
        nodes.append(self)
      } else {
        nodes.append(Node(i))
      }
    }

    for (index, adjacentList) in elements.enumerated() {
      for nodeIndex in adjacentList {
        nodes[index].neighbors.append(nodes[nodeIndex - 1])
      }
    }
  }
}
