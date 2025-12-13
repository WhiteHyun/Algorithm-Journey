//
//  Heap.swift
//  Algorithm
//
//  Created by 홍승현 on 5/15/24.
//

// MARK: - Heap

struct Heap<Element> {
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
