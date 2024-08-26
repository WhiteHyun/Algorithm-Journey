//
//  590. N-ary Tree Postorder Traversal.swift
//  https://leetcode.com/problems/n-ary-tree-postorder-traversal/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/26.
//

// MARK: - LeetCode590

final class LeetCode590 {
  func postorder(_ node: Node?) -> [Int] {
    node == nil ? [] : node!.children.flatMap { postorder($0) } + [node!.val]
  }
}

// MARK: LeetCode590.Node

extension LeetCode590 {
  final class Node {
    var val: Int
    var children: [Node]
    init(_ val: Int) {
      self.val = val
      children = []
    }
  }
}

// MARK: - LeetCode590.Node + ExpressibleByArrayLiteral

extension LeetCode590.Node: ExpressibleByArrayLiteral {
  convenience init(arrayLiteral elements: Int?...) {
    let root = Self(0)
    var queue = [root]

    var index = 0
    while !queue.isEmpty {
      let element = queue.removeFirst()
      while elements.indices ~= index, elements[index] != nil {
        let child = Self(elements[index]!)
        element.children.append(child)
        queue.append(child)

        index += 1
      }
      index += 1
    }
    let firstNode = root.children.first!
    self.init(firstNode.val)
    children = firstNode.children
  }
}
