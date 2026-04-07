//
//  2805. Cutting trees.swift
//  https://www.acmicpc.net/problem/2805
//  Algorithm
//
//  Created by 홍승현 on 2024/04/30.
//

final class BOJ2805 {
  func solution(_ trees: [Int], length: Int) -> Int {
    var left = 0
    var right = trees.max()!
    var answer = 0

    while left <= right {
      let mid = (left + right) >> 1
      var cutLength = 0
      for tree in trees where tree > mid {
        cutLength += tree - mid
      }

      if cutLength >= length {
        answer = mid
        left = mid + 1
      } else {
        right = mid - 1
      }
    }

    return answer
  }
}
