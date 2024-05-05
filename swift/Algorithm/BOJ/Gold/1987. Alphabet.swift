//
//  1987. Alphabet.swift
//  https://www.acmicpc.net/problem/1987
//  Algorithm
//
//  Created by 홍승현 on 2024/05/05.
//

import Foundation

final class BOJ1987 {
  func solution(_ row: Int, _ col: Int, _ matrix: [[Character]]) -> Int {
    var maxCount = 0

    // 그냥 Matrix로 하면 시간초과
    let asciiMatrix = matrix.map {
      $0.map { Int($0.asciiValue!) - 65 }
    }

    func dfs(_ x: Int, _ y: Int, _ count: Int, _ visited: Int) {
      maxCount = max(maxCount, count)

      for (dX, dY) in zip([-1, 1, 0, 0], [0, 0, -1, 1]) {
        let posX = x + dX
        let posY = y + dY

        guard 0 ..< row ~= posX,
              0 ..< col ~= posY
        else {
          continue
        }

        let index = asciiMatrix[posX][posY]
        let mask = 1 << index
        if visited & mask == 0 {
          dfs(posX, posY, count + 1, visited | mask)
        }
      }
    }

    let startIndex = asciiMatrix[0][0]
    dfs(0, 0, 1, 1 << startIndex)

    return maxCount
  }
}
