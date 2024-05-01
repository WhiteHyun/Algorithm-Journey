//
//  11279. Max Heap.swift
//  https://www.acmicpc.net/problem/11279
//  Algorithm
//
//  Created by 홍승현 on 2024/05/01.
//

import Foundation

// MARK: - MaxHeap

struct MaxHeap<Element: Comparable> {
  private var elements: [Element] = []

  var isEmpty: Bool {
    elements.isEmpty
  }

  var count: Int {
    elements.count
  }

  mutating func insert(_ element: Element) {
    elements.append(element)
    siftUp(from: elements.endIndex - 1)
  }

  mutating func remove() -> Element? {
    guard !isEmpty else { return nil }
    elements.swapAt(0, elements.endIndex - 1)
    let removedElement = elements.removeLast()
    siftDown(from: 0)

    return removedElement
  }

  mutating func siftUp(from index: Int) {
    var child = index
    var parent = parentIndex(of: child)

    while child > 0, elements[child] > elements[parent] {
      elements.swapAt(child, parent)
      child = parent
      parent = parentIndex(of: child)
    }
  }

  private mutating func siftDown(from index: Int) {
    var parent = index

    while true {
      let left = leftChildIndex(of: parent)
      let right = rightChildIndex(of: parent)

      var candidate = parent

      if left < count, elements[left] > elements[candidate] {
        candidate = left
      }

      if right < count, elements[right] > elements[candidate] {
        candidate = right
      }

      if candidate == parent { break }

      elements.swapAt(candidate, parent)
      parent = candidate
    }
  }

  private func parentIndex(of index: Int) -> Int {
    (index - 1) >> 1
  }

  private func leftChildIndex(of index: Int) -> Int {
    index * 2 + 1
  }

  private func rightChildIndex(of index: Int) -> Int {
    index * 2 + 2
  }
}

// MARK: - BOJ11279

final class BOJ11279 {
  func solution(_ commands: [Int]) -> [Int] {
    var answer: [Int] = []
    var heap: MaxHeap<Int> = .init()

    for command in commands {
      if command == 0 { answer.append(heap.remove() ?? 0) }
      else { heap.insert(command) }
    }

    return answer
  }

  func solution() {
    let n = Int(readLine()!)!
    var maxHeap = MaxHeap<Int>()

    for _ in 0 ..< n {
      let x = Int(readLine()!)!

      if x == 0 { print(maxHeap.remove() ?? 0) }
      else { maxHeap.insert(x) }
    }
  }
}
