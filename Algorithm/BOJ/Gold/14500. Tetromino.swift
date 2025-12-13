//
//  14500. Tetromino.swift
//  https://www.acmicpc.net/problem/14500
//  Algorithm
//
//  Created by 홍승현 on 2024/05/14.
//

import Foundation

final class BOJ14500 {
  private let tetrominos = [
    [[0, 0], [0, 1], [0, 2], [0, 3]],
    [[0, 0], [1, 0], [2, 0], [3, 0]],
    [[0, 0], [0, 1], [1, 0], [1, 1]],
    [[0, 0], [1, 0], [2, 0], [2, 1]],
    [[1, 0], [1, 1], [1, 2], [0, 2]],
    [[0, 0], [1, 0], [1, 1], [1, 2]],
    [[0, 0], [0, 1], [1, 1], [2, 1]],
    [[0, 1], [1, 1], [2, 0], [2, 1]],
    [[0, 0], [0, 1], [0, 2], [1, 0]],
    [[0, 0], [0, 1], [1, 0], [2, 0]],
    [[0, 0], [0, 1], [0, 2], [1, 2]],
    [[0, 0], [0, 1], [1, 1], [1, 2]],
    [[0, 1], [1, 0], [1, 1], [2, 0]],
    [[0, 0], [1, 0], [1, 1], [2, 1]],
    [[0, 1], [0, 2], [1, 0], [1, 1]],
    [[0, 0], [0, 1], [0, 2], [1, 1]],
    [[0, 1], [1, 0], [1, 1], [1, 2]],
    [[0, 0], [1, 0], [1, 1], [2, 0]],
    [[0, 1], [1, 0], [1, 1], [2, 1]],
  ]

  func solution(_ n: Int, _ m: Int, _ boards: [[Int]]) -> Int {
    var maxSum = 0

    for i in 0 ..< n {
      for j in 0 ..< m {
        for tetromino in tetrominos {
          var sum = 0
          for block in tetromino {
            let x = i + block[0]
            let y = j + block[1]

            guard 0 ..< n ~= x, 0 ..< m ~= y
            else {
              sum = 0
              break
            }

            sum += boards[x][y]
          }
          maxSum = max(maxSum, sum)
        }
      }
    }

    return maxSum
  }
}
