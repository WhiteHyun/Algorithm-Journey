//
//  16234. Population movement.swift
//  https://www.acmicpc.net/problem/16234
//  Algorithm
//
//  Created by 홍승현 on 2024/05/28.
//

import Foundation

// MARK: - Position

private struct Position {
  let row: Int
  let col: Int
}

// MARK: - BOJ16234

final class BOJ16234 {
  /// 방향 배열 (상, 하, 좌, 우)
  private let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

  /// BFS를 이용해 연합을 찾는 함수
  private func findUnion(from start: Position, in matrix: inout [[Int]], using visited: inout [[Bool]], withRange range: some RangeExpression<Int>) -> [Position] {
    let n = matrix.count
    var queue = [start]
    var index = 0
    var union = [start]
    visited[start.row][start.col] = true

    while index < queue.count {
      let pos = queue[index]
      index += 1

      for (dr, dc) in directions {
        let newRow = pos.row + dr
        let newCol = pos.col + dc

        if !(0 ..< n ~= newRow) || !(0 ..< n ~= newCol) || visited[newRow][newCol] {
          continue
        }

        if !range.contains(abs(matrix[pos.row][pos.col] - matrix[newRow][newCol])) {
          continue
        }

        visited[newRow][newCol] = true
        queue.append(Position(row: newRow, col: newCol))
        union.append(Position(row: newRow, col: newCol))
      }
    }

    return union
  }

  /// 인구 이동을 시뮬레이션하는 함수
  func solution(_ n: Int, _ range: some RangeExpression<Int>, _ initialMatrix: [[Int]]) -> Int {
    var matrix = initialMatrix
    var days = 0

    while true {
      var visited: [[Bool]] = .init(repeating: .init(repeating: false, count: n), count: n)
      var isPopulationMoved = false

      for row in 0 ..< n {
        for col in 0 ..< n where !visited[row][col] {
          let union = findUnion(from: Position(row: row, col: col), in: &matrix, using: &visited, withRange: range)
          if union.count < 2 {
            continue
          }

          let totalPopulation = union.reduce(0) { $0 + matrix[$1.row][$1.col] }
          let newPopulation = totalPopulation / union.count

          for pos in union {
            matrix[pos.row][pos.col] = newPopulation
          }

          isPopulationMoved = true
        }
      }

      if !isPopulationMoved {
        break
      }
      days += 1
    }

    return days
  }
}
