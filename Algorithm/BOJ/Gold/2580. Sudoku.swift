//
//  2580. Sudoku.swift
//  https://www.acmicpc.net/problem/2580
//  Algorithm
//
//  Created by 홍승현 on 2024/05/06.
//

final class BOJ2580 {
  func solution(_ sudoku: [[Int]]) -> [[Int]] {
    var sudoku = sudoku
    solve(&sudoku)
    return sudoku
  }

  @discardableResult
  private func solve(_ sudoku: inout [[Int]]) -> Bool {
    if let (row, col) = findEmptyCell(sudoku) {
      for num in 1 ... 9 {
        if isValid(sudoku, row, col, num) {
          sudoku[row][col] = num
          if solve(&sudoku) {
            return true
          }
          sudoku[row][col] = 0
        }
      }
      return false
    }
    return true
  }

  private func findEmptyCell(_ sudoku: [[Int]]) -> (Int, Int)? {
    for row in 0 ..< 9 {
      for col in 0 ..< 9 {
        if sudoku[row][col] == 0 {
          return (row, col)
        }
      }
    }
    return nil
  }

  private func isValid(_ sudoku: [[Int]], _ row: Int, _ col: Int, _ num: Int) -> Bool {
    for i in 0 ..< 9 {
      if sudoku[row][i] == num || sudoku[i][col] == num {
        return false
      }
    }

    let boxRow = (row / 3) * 3
    let boxCol = (col / 3) * 3
    for i in boxRow ..< (boxRow + 3) {
      for j in boxCol ..< (boxCol + 3) {
        if sudoku[i][j] == num {
          return false
        }
      }
    }

    return true
  }
}
