//
//  미로 탈출 명령어
//  https://school.programmers.co.kr/learn/courses/30/lessons/150365
//
//  Created by whitehyun on 2023/08/15.
//

import Foundation

// MARK: - Queue

private struct Queue<Element> {
  private var frontArray: [Element] = []
  private var backArray: [Element] = []

  mutating func append(_ element: Element) {
    backArray.append(element)
  }

  mutating func popFirst() -> Element? {
    if !frontArray.isEmpty { return frontArray.popLast() }
    frontArray = backArray.reversed()
    backArray = []
    return frontArray.popLast()
  }
}

// MARK: Collection

extension Queue: Collection {
  typealias Element = Element

  var startIndex: Int {
    0
  }

  var endIndex: Int {
    frontArray.count + backArray.count
  }

  subscript(position: Int) -> Element {
    precondition(startIndex ..< endIndex ~= position, "Index out of bounds")
    if position < frontArray.count {
      return frontArray[frontArray.count - position - 1]
    }
    return backArray[position - frontArray.count]
  }

  func index(after i: Int) -> Int {
    precondition(i < endIndex, "Can't advance beyond endIndex")
    return i + 1
  }
}

// MARK: ExpressibleByArrayLiteral

extension Queue: ExpressibleByArrayLiteral {
  init(arrayLiteral elements: Element...) {
    backArray = elements
  }
}

// MARK: - Direction

private enum Direction: String, CaseIterable {
  case down = "d"
  case left = "l"
  case right = "r"
  case up = "u"

  var dx: Int {
    switch self {
    case .down:
      1
    case .left:
      0
    case .right:
      0
    case .up:
      -1
    }
  }

  var dy: Int {
    switch self {
    case .down:
      0
    case .left:
      -1
    case .right:
      1
    case .up:
      0
    }
  }
}

// MARK: - ProgrammersSolution150365

final class ProgrammersSolution150365 {
  struct MazeInfo {
    let x: Int
    let y: Int
    let count: Int
    let direction: String
  }

  func solution(_ n: Int, _ m: Int, _ x: Int, _ y: Int, _ r: Int, _ c: Int, _ k: Int) -> String {
    var visited: [[[Bool]]] = Array(repeating: Array(repeating: Array(repeating: false, count: m), count: n), count: k)

    let (startX, startY) = (x - 1, y - 1)
    let (endX, endY) = (r - 1, c - 1)
    var queue: Queue<MazeInfo> = [MazeInfo(x: startX, y: startY, count: 0, direction: "")]
    visited[0][startX][startY] = true

    while !queue.isEmpty {
      let info = queue.popFirst()!

      for direction in Direction.allCases {
        let x = info.x + direction.dx
        let y = info.y + direction.dy

        // index out of range
        if x < 0 || y < 0 || x >= n || y >= m || info.count >= k {
          continue
        }

        // already visited
        if visited[info.count][x][y] {
          continue
        }

        visited[info.count][x][y] = true
        let nextInfo = MazeInfo(x: x, y: y, count: info.count + 1, direction: info.direction + direction.rawValue)

        // 원하는 횟수에 도착지점에 닿으면 방향값 반환
        if info.count == k - 1, x == endX, y == endY {
          return nextInfo.direction
        }

        // 새로운 위치에 맞게 queue 삽입
        queue.append(nextInfo)
      }
    }

    return "impossible"
  }
}
