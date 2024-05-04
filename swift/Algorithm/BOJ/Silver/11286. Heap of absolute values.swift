//
//  11286. Heap of absolute values.swift
//  https://www.acmicpc.net/problem/11286
//  Algorithm
//
//  Created by 홍승현 on 2024/05/04.
//

// MARK: - AbsoluteHeap

private struct AbsoluteHeap<Element: Comparable & Equatable & SignedNumeric> {
  private var elements: [Element] = .init()

  var isEmpty: Bool { elements.isEmpty }
  var count: Int { elements.count }

  mutating func insert(_ element: Element) {
    elements.append(element)
    siftUp(from: elements.endIndex - 1)
  }

  private mutating func siftUp(from index: Int) {
    guard index > 0 else { return }
    let parent = parentIndex(of: index)
    let absChild = abs(elements[index])
    let absParent = abs(elements[parent])

    if absParent > absChild || (absParent == absChild && elements[parent] > elements[index]) {
      elements.swapAt(index, parent)
      siftUp(from: parent)
    }
  }

  mutating func remove() -> Element? {
    guard !isEmpty else { return nil }
    elements.swapAt(0, elements.endIndex - 1)
    let removeElement = elements.removeLast()
    siftDown(from: 0)

    return removeElement
  }

  private mutating func siftDown(from index: Int) {
    let left = leftChildIndex(of: index)
    let right = rightChildIndex(of: index)

    var candidate = index

    if shouldChooseChild(candidate, left) {
      candidate = left
    }
    if shouldChooseChild(candidate, right) {
      candidate = right
    }
    if candidate == index { return }
    elements.swapAt(candidate, index)
    siftDown(from: candidate)
  }

  private func shouldChooseChild(_ current: Int, _ child: Int) -> Bool {
    child < count &&
      (abs(elements[current]) > abs(elements[child]) ||
        (abs(elements[current]) == abs(elements[child]) && elements[current] > elements[child]))
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

// MARK: - BOJ11286

final class BOJ11286 {
  func absoluteHeap(_ commands: [Int]) -> [Int] {
    var absHeap: AbsoluteHeap<Int> = .init()
    var result: [Int] = []

    for command in commands {
      if command == 0 {
        result.append(absHeap.remove() ?? 0)
      } else {
        absHeap.insert(command)
      }
    }

    return result
  }
}
