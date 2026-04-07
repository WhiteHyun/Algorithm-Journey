//
//  3197. The Lake of Swan.swift
//  https://www.acmicpc.net/problem/3197
//  Algorithm
//
//  Created by 홍승현 on 2024/04/25.
//

import Foundation

// MARK: - Point

private struct Point: Hashable {
  let x: Int
  let y: Int
}

// MARK: - BOJ3197

final class BOJ3197 {
  private let directions: [(dx: Int, dy: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
  func solution(_ row: Int, _ col: Int, _ lake: [[Character]]) -> Int {
    var lake = lake
    var swanPositions: [Point] = []
    var swanStack: [Point] = []
    var waterStack: [Point] = []
    var days = 0

    var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: col), count: row)
    for i in 0 ..< row {
      for j in 0 ..< col {
        if lake[i][j] == "L" {
          swanPositions.append(.init(x: i, y: j))
          lake[i][j] = "."
          waterStack.append(.init(x: i, y: j))
        } else if lake[i][j] == "." {
          waterStack.append(.init(x: i, y: j))
        }
      }
    }

    swanStack = [swanPositions[0]]
    visited[swanPositions[0].x][swanPositions[0].y] = true

    while true {
      if canFindSwan(lake: lake, destination: swanPositions[1], visited: &visited, stack: &swanStack) {
        return days
      }

      meltIce(lake: &lake, stack: &waterStack)
      days += 1
    }
  }

  /// 백조를 찾을 수 있는가
  private func canFindSwan(lake: [[Character]], destination: Point, visited: inout [[Bool]], stack: inout [Point]) -> Bool {
    var nextStack: [Point] = []
    while let point = stack.popLast() {
      if point == destination {
        return true
      }

      for direction in directions {
        let newRow = point.x + direction.dx
        let newCol = point.y + direction.dy
        if !(lake.indices ~= newRow) || !(lake[0].indices ~= newCol) || visited[newRow][newCol] {
          continue
        }
        visited[newRow][newCol] = true

        if lake[newRow][newCol] == "X" {
          nextStack.append(.init(x: newRow, y: newCol))
          continue
        }
        stack.append(.init(x: newRow, y: newCol))
      }
    }
    stack = nextStack
    return false
  }

  /// 얼음 녹이기
  private func meltIce(lake: inout [[Character]], stack: inout [Point]) {
    var nextStack: [Point] = []
    while let point = stack.popLast() {
      for direction in directions {
        let newRow = point.x + direction.dx
        let newCol = point.y + direction.dy
        if !(lake.indices ~= newRow) || !(lake[0].indices ~= newCol) {
          continue
        }
        if lake[newRow][newCol] == "X" {
          lake[newRow][newCol] = "."
          nextStack.append(.init(x: newRow, y: newCol))
        }
      }
    }

    stack = nextStack
  }
}
