//
//  14503. Robot vacuum cleaners.swift
//  https://www.acmicpc.net/problem/14503
//  Algorithm
//
//  Created by 홍승현 on 2024/05/26.
//

final class BOJ14503 {
  private enum Direction: Int, CaseIterable {
    case north
    case east
    case south
    case west

    var dx: Int {
      switch self {
      case .north:
        -1
      case .south:
        1
      case .east,
           .west:
        0
      }
    }

    var dy: Int {
      switch self {
      case .north,
           .south:
        0
      case .east:
        1
      case .west:
        -1
      }
    }
  }

  func solution(_ position: (x: Int, y: Int, direction: Int), _ matrix: [[Int]]) -> Int {
    let cleaning = 2
    var matrix = matrix

    var x = position.x
    var y = position.y
    var answer = 1
    matrix[x][y] = cleaning
    var direction = Direction(rawValue: position.direction)!
    while true {
      // 빈 칸이 없는 경우
      if shouldCleanUp(in: matrix, x: x, y: y) == false {
        let nextX = x - direction.dx
        let nextY = y - direction.dy
        guard matrix.indices ~= nextX,
              matrix[0].indices ~= nextY,
              matrix[nextX][nextY] != 1
        else {
          break
        }
        x = nextX
        y = nextY
        continue
      }

      while true {
        // 반시계방향으로 90도 회전
        direction = Direction(rawValue: (direction.rawValue + 3) % 4)!

        let nextX = x + direction.dx
        let nextY = y + direction.dy
        guard matrix.indices ~= nextX,
              matrix[0].indices ~= nextY,
              matrix[nextX][nextY] == 0
        else {
          continue
        }

        x = nextX
        y = nextY
        matrix[x][y] = 2
        answer += 1
        break
      }
    }

    return answer
  }

  func shouldCleanUp(in matrix: [[Int]], x: Int, y: Int) -> Bool {
    for direction in Direction.allCases {
      let nextX = direction.dx + x
      let nextY = direction.dy + y
      guard matrix.indices ~= nextX, matrix[0].indices ~= nextY,
            matrix[nextX][nextY] == 0
      else {
        continue
      }
      return true
    }
    return false
  }
}
