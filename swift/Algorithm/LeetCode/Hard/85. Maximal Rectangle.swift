//
//  85. Maximal Rectangle
//  https://leetcode.com/problems/maximal-rectangle/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCodeSolution85 {
  func maximalRectangle(_ matrix: [[Character]]) -> Int {
    var answer = 0

    let array: [[Int]] = matrix.map({ $0.map(String.init).compactMap(Int.init) })
    var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: matrix[0].count), count: matrix.count)
    dp[0] = array[0]

    for row in 1..<array.count {
      for col in 0..<array[row].count where array[row][col] != 0 {
        dp[row][col] = dp[row - 1][col] + 1
      }
    }

    // calculate area
    for row in 0..<array.count {
      var stack: [(index: Int, height: Int)] = []

      for (i, height) in dp[row].enumerated() {
        if stack.isEmpty || stack.last!.height < height {
          stack.append((i, height))
          continue
        }
        var start = i

        while !stack.isEmpty && stack.last!.height > height {
          let (index, height) = stack.popLast()!
          answer = max(answer, height * (i - index))
          start = index
        }
        stack.append((start, height))
      }

      for (i, height) in stack {
        answer = max(answer, height * (dp[row].count - i))
      }
    }

    return answer
  }
}
