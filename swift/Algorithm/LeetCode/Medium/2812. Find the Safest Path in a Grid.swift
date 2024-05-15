//
//  2812. Find the Safest Path in a Grid.swift
//  https://leetcode.com/problems/find-the-safest-path-in-a-grid/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/15.
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

private class Queue<T> {
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

// MARK: - LeetCode2812

final class LeetCode2812 {
  // MARK: - Runtime 819 ms / Memory 21.34 MB

  func maximumSafenessFactor(_ grid: [[Int]]) -> Int {
    guard grid[0][0] == 0, grid.last!.last! == 0
    else {
      return 0
    }
    let n = grid.count
    var distance: [[Int]] = .init(repeating: .init(repeating: .max, count: n), count: n)

    let queue: Queue<(Int, Int)> = .init()
    for i in 0 ..< n {
      for j in 0 ..< n where grid[i][j] == 1 {
        distance[i][j] = 0
        queue.enqueue((i, j))
      }
    }

    while let (x, y) = queue.dequeue() {
      for (dx, dy) in [(-1, 0), (1, 0), (0, -1), (0, 1)] {
        let nx = x + dx
        let ny = y + dy

        guard 0 ..< n ~= nx,
              0 ..< n ~= ny,
              distance[nx][ny] > distance[x][y] + 1
        else {
          continue
        }

        distance[nx][ny] = distance[x][y] + 1
        queue.enqueue((nx, ny))
      }
    }

    var safenessFactor: [[Int]] = .init(repeating: .init(repeating: .min, count: n), count: n)
    var maxHeap: Heap<(safeness: Int, x: Int, y: Int)> = .init(compareClosure: { $0.safeness > $1.safeness })
    safenessFactor[0][0] = distance[0][0]

    maxHeap.insert((safenessFactor[0][0], 0, 0))

    while let (currentSafeness, x, y) = maxHeap.remove() {
      for (dx, dy) in [(-1, 0), (1, 0), (0, -1), (0, 1)] {
        let nx = x + dx
        let ny = y + dy

        guard 0 ..< n ~= nx,
              0 ..< n ~= ny
        else {
          continue
        }

        let newSafeness = min(currentSafeness, distance[nx][ny])
        if newSafeness > safenessFactor[nx][ny] {
          safenessFactor[nx][ny] = newSafeness
          maxHeap.insert((newSafeness, nx, ny))
        }
      }
    }

    return safenessFactor[n - 1][n - 1]
  }
}
