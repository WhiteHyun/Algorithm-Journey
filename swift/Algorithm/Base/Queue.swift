//
//  Queue.swift
//  Algorithm
//
//  Created by 홍승현 on 5/29/24.
//

// MARK: - Node

private class Node<T> {
  let element: T
  var next: Node<T>?

  init(element: T, next: Node<T>? = nil) {
    self.element = element
    self.next = next
  }
}

// MARK: - Queue

final class Queue<T> {
  private var head: Node<T>?
  private var tail: Node<T>?
  private var count: Int = 0

  var isEmpty: Bool {
    count == 0
  }

  func enqueue(_ element: T) {
    let newNode = Node(element: element)

    if let tailNode = tail {
      tailNode.next = newNode
    } else {
      head = newNode
    }

    tail = newNode
    count += 1
  }

  func dequeue() -> T? {
    guard let headNode = head
    else {
      return nil
    }

    let element = headNode.element
    head = headNode.next

    if head == nil {
      tail = nil
    }

    count -= 1
    return element
  }

  func peek() -> T? {
    head?.element
  }

  func clear() {
    head = nil
    tail = nil
    count = 0
  }
}

// MARK: ExpressibleByArrayLiteral

extension Queue: ExpressibleByArrayLiteral {
  convenience init(arrayLiteral elements: T...) {
    self.init()
    for element in elements {
      enqueue(element)
    }
  }
}
