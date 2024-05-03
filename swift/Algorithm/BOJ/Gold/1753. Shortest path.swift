//
//  1753. Shortest path.swift
//  https://www.acmicpc.net/problem/1753
//  Algorithm
//
//  Created by 홍승현 on 2024/05/03.
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

// MARK: - BOJ1753

final class BOJ1753 {
  func shortestPath(_ vertexCount: Int, _ startVertex: Int, _ edges: [(u: Int, v: Int, w: Int)]) -> [Int] {
    var graph: [[(Int, Int)]] = .init(repeating: .init(), count: vertexCount)
    var distances: [Int] = .init(repeating: .max, count: vertexCount)
    var pq: Heap<(Int, Int)> = .init { $0.1 < $1.1 }

    for edge in edges {
      graph[edge.u - 1].append((edge.v - 1, edge.w))
    }

    pq.insert((startVertex - 1, 0))
    distances[startVertex - 1] = 0

    while let (vertex, distance) = pq.remove() {
      if distance > distances[vertex] { continue }

      for (neighbor, weight) in graph[vertex] {
        let newDistance = distance + weight
        if newDistance < distances[neighbor] {
          distances[neighbor] = newDistance
          pq.insert((neighbor, newDistance))
        }
      }
    }

    return distances
  }
}
