//
//  12100. 2048 (Easy).swift
//  https://www.acmicpc.net/problem/12100
//  Algorithm
//
//  Created by 홍승현 on 2024/05/20.
//

import Foundation

final class BOJ12100 {
  let directions = [0, 1, 2, 3] // 상, 하, 좌, 우
  var maxValue = 0

  func maxNumber(_: Int, _ array: [[Int]]) -> Int {
    backtrack(0, array)
    return maxValue
  }

  private func backtrack(_ count: Int, _ array: [[Int]]) {
    if count == 5 {
      maxValue = max(maxValue, array.flatMap { $0 }.max()!)
      return
    }

    for direction in directions {
      let movedArray = moveAndMerge(array, direction)
      backtrack(count + 1, movedArray)
    }
  }

  private func moveAndMerge(_ array: [[Int]], _ direction: Int) -> [[Int]] {
    let size = array.count
    var newArray = Array(repeating: Array(repeating: 0, count: size), count: size)
    let rotatedArray = rotate(array, direction)

    for row in 0 ..< size {
      var newRow = [Int]()
      var previousValue = 0

      for value in rotatedArray[row] where value != 0 {
        if value == previousValue {
          newRow.append(value * 2)
          previousValue = 0
        } else {
          if previousValue != 0 {
            newRow.append(previousValue)
          }
          previousValue = value
        }
      }
      if previousValue != 0 {
        newRow.append(previousValue)
      }

      for i in 0 ..< newRow.count {
        newArray[row][i] = newRow[i]
      }
    }

    return rotate(newArray, (4 - direction) % 4)
  }

  private func rotate(_ array: [[Int]], _ direction: Int) -> [[Int]] {
    let size = array.count
    var newArray = Array(repeating: Array(repeating: 0, count: size), count: size)

    switch direction {
    case 0:
      return array
    case 1:
      for i in 0 ..< size {
        for j in 0 ..< size {
          newArray[j][size - i - 1] = array[i][j]
        }
      }
    case 2:
      for i in 0 ..< size {
        for j in 0 ..< size {
          newArray[size - i - 1][size - j - 1] = array[i][j]
        }
      }
    case 3:
      for i in 0 ..< size {
        for j in 0 ..< size {
          newArray[size - j - 1][i] = array[i][j]
        }
      }
    default:
      break
    }

    return newArray
  }
}
