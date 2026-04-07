//
//  840. Magic Squares In Grid.swift
//  https://leetcode.com/problems/magic-squares-in-grid/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/09.
//

final class LeetCode840 {
  func numMagicSquaresInside(_ grid: [[Int]]) -> Int {
    var count = 0

    for row in stride(from: 0, to: grid.count - 2, by: 1) {
      for col in stride(from: 0, to: grid[row].count - 2, by: 1) {
        if isMagicSquare(in: grid, startRow: row, startCol: col) {
          count += 1
        }
      }
    }
    return count
  }

  private func isMagicSquare(in grid: [[Int]], startRow: Int, startCol: Int) -> Bool {
    // 1 ~ 9 까지의 숫자가 모두 포함되어 있는지 확인
    let numbers = (startRow ..< (startRow + 3))
      .flatMap { r in
        (startCol ..< (startCol + 3)).map { c in grid[r][c] }
      }

    guard Set(numbers) == Set(1 ... 9) else { return false }

    // 행, 열, 대각선의 합이 모두 15인지 확인
    for i in 0 ..< 3 {
      guard sumRow(grid, row: startRow + i, col: startCol) == 15,
            sumCol(grid, row: startRow, col: startCol + i) == 15 else {
        return false
      }
    }

    // 대각선 합 확인
    guard sumDiagonal(grid, startRow: startRow, startCol: startCol) == 15,
          sumAntiDiagonal(grid, startRow: startRow, startCol: startCol) == 15 else {
      return false
    }

    return true
  }

  /// 행의 합을 계산하는 함수
  private func sumRow(_ grid: [[Int]], row: Int, col: Int) -> Int {
    (0 ..< 3).reduce(0) { $0 + grid[row][col + $1] }
  }

  /// 열의 합을 계산하는 함수
  private func sumCol(_ grid: [[Int]], row: Int, col: Int) -> Int {
    (0 ..< 3).reduce(0) { $0 + grid[row + $1][col] }
  }

  /// 주 대각선의 합을 계산하는 함수
  private func sumDiagonal(_ grid: [[Int]], startRow: Int, startCol: Int) -> Int {
    (0 ..< 3).reduce(0) { $0 + grid[startRow + $1][startCol + $1] }
  }

  /// 반대 대각선의 합을 계산하는 함수
  private func sumAntiDiagonal(_ grid: [[Int]], startRow: Int, startCol: Int) -> Int {
    (0 ..< 3).reduce(0) { $0 + grid[startRow + $1][startCol + 2 - $1] }
  }
}
