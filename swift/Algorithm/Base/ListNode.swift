//
//  ListNode.swift
//  Algorithm
//
//  Created by 홍승현 on 5/4/24.
//

import Foundation

// MARK: - ListNode

final class ListNode {
  var val: Int
  var next: ListNode?

  init(_ val: Int = 0, _ next: ListNode? = nil) {
    self.val = val
    self.next = next
  }
}

// MARK: ExpressibleByArrayLiteral

extension ListNode: ExpressibleByArrayLiteral {
  typealias ArrayLiteralElement = Int

  convenience init(arrayLiteral elements: ArrayLiteralElement...) {
    guard elements.isEmpty == false
    else {
      self.init(0)
      return
    }

    self.init(elements.first ?? 0)

    var node: ListNode? = self
    for element in elements.dropFirst() {
      node?.next = .init(element)
      node = node?.next
    }
  }
}

// MARK: CustomStringConvertible

extension ListNode: CustomStringConvertible {
  public var description: String {
    var array: [String] = []
    var node: ListNode? = self
    while node != nil {
      array.append(String(val))
      node = node?.next
    }

    return "[\(array.joined(separator: ", "))]"
  }
}

// MARK: Equatable

extension ListNode: Equatable {
  static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    var leftNode: ListNode? = lhs
    var rightNode: ListNode? = rhs

    while leftNode != nil, rightNode != nil {
      if leftNode?.val != rightNode?.val {
        return false
      }
      leftNode = leftNode?.next
      rightNode = rightNode?.next
    }

    return leftNode == nil && rightNode == nil
  }
}
