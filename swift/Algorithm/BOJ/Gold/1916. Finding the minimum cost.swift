//
//  1916. Finding the minimum cost.swift
//  https://www.acmicpc.net/problem/1916
//  Algorithm
//
//  Created by 홍승현 on 2024/05/07.
//

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

// MARK: - BOJ1916

final class BOJ1916 {
  func minimumCost(_ n: Int, _ source: Int, _ destination: Int, _ array: [(start: Int, destination: Int, cost: Int)]) -> Int {
    var graph: [[(Int, Int)]] = .init(repeating: .init(), count: n)
    var answer: [Int] = .init(repeating: .max, count: n)
    var pq: Heap<(vertex: Int, cost: Int)> = .init { $0.cost < $1.cost }

    for (start, destination, cost) in array {
      graph[start - 1].append((destination - 1, cost))
    }

    pq.insert((source - 1, 0))
    answer[source - 1] = 0

    while let (vertex, cost) = pq.remove() {
      if answer[vertex] != cost { continue }

      for (neighbor, c) in graph[vertex] {
        let newCost = c + cost
        if newCost < answer[neighbor] {
          pq.insert((neighbor, newCost))
          answer[neighbor] = newCost
        }
      }
    }
    return answer[destination - 1]
  }
}
