//
//  857. Minimum Cost to Hire K Workers.swift
//  https://leetcode.com/problems/minimum-cost-to-hire-k-workers/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/11.
//

import Foundation

// MARK: - Heap

private struct Heap<Element> {
  private var elements: [Element] = []
  private let comparator: (Element, Element) -> Bool

  init(compareClosure: @escaping (Element, Element) -> Bool) {
    comparator = compareClosure
  }

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
    guard index > 0 else { return }

    let parent = parentIndex(of: index)

    if comparator(elements[index], elements[parent]) {
      elements.swapAt(parent, index)
      siftUp(from: parent)
    }
  }

  mutating func siftDown(from index: Int) {
    let left = leftChildIndex(of: index)
    let right = rightChildIndex(of: index)

    var candidate = index

    if left < count, comparator(elements[left], elements[candidate]) {
      candidate = left
    }
    if right < count, comparator(elements[right], elements[candidate]) {
      candidate = right
    }

    if candidate != index {
      elements.swapAt(candidate, index)
      siftDown(from: candidate)
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

// MARK: - LeetCode857

final class LeetCode857 {
  func mincostToHireWorkers(_ quality: [Int], _ wage: [Int], _ k: Int) -> Double {
    let workers = zip(wage, quality).map { (Double($0) / Double($1), $1) }.sorted { $0.0 < $1.0 }
    var res = Double.infinity
    var qsum = 0
    var heap = Heap<Int>(compareClosure: >)

    for (r, q) in workers {
      heap.insert(q)
      qsum += q
      if heap.count > k {
        let maxQ = heap.remove()!
        qsum -= maxQ
      }
      if heap.count == k {
        res = min(res, Double(qsum) * r)
      }
    }

    return res
  }
}
