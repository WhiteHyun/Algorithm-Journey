//
//  Deque.swift
//  Algorithm
//
//  Created by 홍승현 on 5/27/24.
//

import Foundation

// MARK: - DequeNode

private final class DequeNode<T> {
  var value: T
  var previous: DequeNode<T>?
  var next: DequeNode<T>?

  init(value: T) {
    self.value = value
  }
}

// MARK: - Deque

final class Deque<T> {
  private var head: DequeNode<T>?
  private var tail: DequeNode<T>?
  private(set) var count: Int = 0

  var isEmpty: Bool {
    count == 0
  }

  func append(_ value: T) {
    let newNode = DequeNode(value: value)

    if let tail {
      newNode.previous = tail
      tail.next = newNode
    } else {
      head = newNode
    }

    tail = newNode
    count += 1
  }

  func popFirst() -> T? {
    guard let head else {
      return nil
    }

    let value = head.value

    if let nextNode = head.next {
      nextNode.previous = nil
      self.head = nextNode
    } else {
      self.head = nil
      tail = nil
    }

    count -= 1
    return value
  }

  func popLast() -> T? {
    guard let tail else {
      return nil
    }

    let value = tail.value

    if let previousNode = tail.previous {
      previousNode.next = nil
      self.tail = previousNode
    } else {
      head = nil
      self.tail = nil
    }

    count -= 1
    return value
  }
}
