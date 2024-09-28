//
//  641. Design Circular Deque.swift
//  https://leetcode.com/problems/design-circular-deque/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/28.
//

enum LeetCode641 {
  private final class DoubledLinkedListNode {
    let value: Int
    var left: DoubledLinkedListNode?
    var right: DoubledLinkedListNode?

    init(value: Int, left: DoubledLinkedListNode? = nil, right: DoubledLinkedListNode? = nil) {
      self.value = value
      self.left = left
      self.right = right
    }
  }

  final class MyCircularDeque {
    private let capacity: Int
    private var count = 0
    private var head: DoubledLinkedListNode?
    private var tail: DoubledLinkedListNode?

    init(_ k: Int) {
      capacity = k
    }

    func insertFront(_ value: Int) -> Bool {
      if isFull() { return false }
      let tempNode = DoubledLinkedListNode(value: value)

      if head == nil {
        head = tempNode
        tail = tempNode
      } else {
        head?.left = tempNode
        tempNode.right = head
        head = tempNode
      }
      count += 1
      return true
    }

    func insertLast(_ value: Int) -> Bool {
      if isFull() { return false }
      let tempNode = DoubledLinkedListNode(value: value)

      if tail == nil {
        head = tempNode
        tail = tempNode
      } else {
        tail?.right = tempNode
        tempNode.left = tail
        tail = tempNode
      }
      count += 1
      return true
    }

    func deleteFront() -> Bool {
      if isEmpty() { return false }
      if head === tail {
        tail = nil
        head = nil
      }
      let candidate = head?.right
      candidate?.left = nil
      head = candidate
      count -= 1
      return true
    }

    func deleteLast() -> Bool {
      if isEmpty() { return false }
      if head === tail {
        tail = nil
        head = nil
      }
      let candidate = tail?.left
      candidate?.right = nil
      tail = candidate
      count -= 1
      return true
    }

    func getFront() -> Int {
      guard let head else { return -1 }
      return head.value
    }

    func getRear() -> Int {
      guard let tail else { return -1 }
      return tail.value
    }

    func isEmpty() -> Bool {
      count == 0
    }

    func isFull() -> Bool {
      count == capacity
    }
  }
}
