//
//  432. All O`one Data Structure.swift
//  https://leetcode.com/problems/all-oone-data-structure/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/29.
//

enum LeetCode432 {
  final class Node {
    let key: String
    var count: Int
    var prev: Node?
    var next: Node?

    init(key: String, count: Int = 1) {
      self.key = key
      self.count = count
    }

    var isEmpty: Bool {
      count == 0
    }
  }

  class AllOne {
    private var head: Node?
    private var tail: Node?
    private var dict: [String: Node] = [:]

    func inc(_ key: String) {
      if let node = dict[key] {
        node.count += 1
        moveNodeRight(node)
      } else {
        let node = Node(key: key)
        dict[key] = node
        insertAtHead(node)
      }
    }

    func dec(_ key: String) {
      guard let node = dict[key] else { return }
      node.count -= 1
      if node.isEmpty {
        removeNode(node)
        dict[key] = nil
      } else {
        moveNodeLeft(node)
      }
    }

    func getMaxKey() -> String {
      tail?.key ?? ""
    }

    func getMinKey() -> String {
      head?.key ?? ""
    }

    private func insertAtHead(_ node: Node) {
      if head == nil {
        head = node
        tail = node
      } else {
        node.next = head
        head?.prev = node
        head = node
      }
    }

    private func removeNode(_ node: Node) {
      if node === head { head = node.next }
      if node === tail { tail = node.prev }
      node.prev?.next = node.next
      node.next?.prev = node.prev
    }

    private func moveNodeRight(_ node: Node) {
      while let next = node.next, next.count < node.count {
        swapNodes(node, next)
      }
      if node === tail { tail = node }
    }

    private func moveNodeLeft(_ node: Node) {
      while let prev = node.prev, prev.count > node.count {
        swapNodes(prev, node)
      }
      if node === head { head = node }
    }

    private func swapNodes(_ left: Node, _ right: Node) {
      let leftPrev = left.prev
      let rightNext = right.next

      leftPrev?.next = right
      right.prev = leftPrev

      right.next = left
      left.prev = right

      left.next = rightNext
      rightNext?.prev = left

      if left === head { head = right }
      if right === tail { tail = left }
    }
  }
}
