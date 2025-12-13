//
//  1927. Min Heap.swift
//  https://www.acmicpc.net/problem/1927
//  Algorithm
//
//  Created by 홍승현 on 2024/05/02.
//

import Foundation

// MARK: - MinHeap

private struct MinHeap<Element: Comparable> {
  private var elements: [Element] = []

  var isEmpty: Bool { elements.isEmpty }

  var count: Int { elements.count }

  mutating func insert(_ element: Element) {
    elements.append(element)
    siftUp(from: elements.endIndex - 1)
  }

  mutating func remove() -> Element? {
    guard !elements.isEmpty else { return nil }
    elements.swapAt(0, elements.endIndex - 1)
    let removeElement = elements.removeLast()
    siftDown(from: 0)

    return removeElement
  }

  mutating func siftUp(from index: Int) {
    var child = index
    var parent = parentIndex(of: child)

    while child > 0, elements[parent] > elements[child] {
      elements.swapAt(parent, child)
      child = parent
      parent = parentIndex(of: child)
    }
  }

  mutating func siftDown(from index: Int) {
    var parent = index

    while true {
      let left = leftChildIndex(of: parent)
      let right = rightChildIndex(of: parent)

      var candidate = parent

      if left < count, elements[left] < elements[candidate] {
        candidate = left
      }
      if right < count, elements[right] < elements[candidate] {
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

// MARK: - BOJ1927

final class BOJ1927 {
  func solution(_ inputs: [Int]) -> [Int] {
    var answer: [Int] = []
    var minHeap: MinHeap<Int> = .init()
    for input in inputs {
      if input == 0 {
        answer.append(minHeap.remove() ?? 0)
      } else {
        minHeap.insert(input)
      }
    }

    return answer
  }
}
