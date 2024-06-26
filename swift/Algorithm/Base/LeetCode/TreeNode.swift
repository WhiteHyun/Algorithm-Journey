//
//  TreeNode.swift
//  Algorithm
//
//  Created by 홍승현 on 4/15/24.
//

import Foundation

// MARK: - TreeNode

final class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?

  init(_ val: Int = 0, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
    self.val = val
    self.left = left
    self.right = right
  }
}

// MARK: Equatable

extension TreeNode: Equatable {
  static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
    lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
  }
}

// MARK: ExpressibleByArrayLiteral

extension TreeNode: ExpressibleByArrayLiteral {
  typealias ArrayLiteralElement = Int?

  convenience init(arrayLiteral elements: ArrayLiteralElement...) {
    guard elements.isEmpty == false
    else {
      self.init(.min)
      return
    }
    self.init(elements[0]!)
    var queue: [TreeNode] = [self]

    var index = 1
    while !queue.isEmpty {
      let node = queue.removeFirst()

      if index < elements.count {
        if let leftValue = elements[index] {
          let leftNode = TreeNode(leftValue)
          node.left = leftNode
          queue.append(leftNode)
        }
        index += 1
      }

      if index < elements.count {
        if let rightValue = elements[index] {
          let rightNode = TreeNode(rightValue)
          node.right = rightNode
          queue.append(rightNode)
        }
        index += 1
      }
    }
  }
}

// MARK: CustomStringConvertible

extension TreeNode: CustomStringConvertible {
  public var description: String {
    BTreePrinter.printNode(self)
  }
}

// MARK: - BTreePrinter

private enum BTreePrinter {
  static func printNode(_ root: TreeNode?) -> String {
    guard let root else { return "" }

    let maxLevel = maxLevel(root)
    return printNodeInternal([root], level: 1, maxLevel: maxLevel)
  }

  private static func printNodeInternal(_ nodes: [TreeNode?], level: Int, maxLevel: Int) -> String {
    if nodes.isEmpty || isAllElementsNil(nodes) {
      return ""
    }

    let floor = maxLevel - level
    let endgeLines = Int(pow(2.0, Double(max(floor - 1, 0))))
    let firstSpaces = Int(pow(2.0, Double(floor))) - 1
    let betweenSpaces = Int(pow(2.0, Double(floor + 1))) - 1

    var result = ""
    result += printWhitespaces(firstSpaces)

    var newNodes = [TreeNode?]()
    for node in nodes {
      if let node {
        result += "\(node.val)"
        newNodes.append(node.left)
        newNodes.append(node.right)
      } else {
        newNodes.append(nil)
        newNodes.append(nil)
        result += " "
      }

      result += printWhitespaces(betweenSpaces)
    }
    result += "\n"

    for i in 1 ... endgeLines {
      for j in 0 ..< nodes.count {
        result += printWhitespaces(firstSpaces - i)
        if nodes[j] == nil {
          result += printWhitespaces(endgeLines + endgeLines + i + 1)
          continue
        }

        if nodes[j]?.left != nil {
          result += "/"
        } else {
          result += printWhitespaces(1)
        }

        result += printWhitespaces(i + i - 1)

        if nodes[j]?.right != nil {
          result += "\\"
        } else {
          result += printWhitespaces(1)
        }

        result += printWhitespaces(endgeLines + endgeLines - i)
      }

      result += "\n"
    }

    result += printNodeInternal(newNodes, level: level + 1, maxLevel: maxLevel)

    return result
  }

  private static func printWhitespaces(_ count: Int) -> String {
    count > 0 ? .init(repeating: " ", count: count) : ""
  }

  private static func maxLevel(_ node: TreeNode?) -> Int {
    guard let node else { return 0 }

    return max(maxLevel(node.left), maxLevel(node.right)) + 1
  }

  private static func isAllElementsNil(_ list: [TreeNode?]) -> Bool {
    !list.contains { $0 != nil }
  }
}
