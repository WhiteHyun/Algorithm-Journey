//
//  1975. Maximum Matrix Sum.swift
//  https://leetcode.com/problems/maximum-matrix-sum/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/24.
//

final class LeetCode1975 {
  func maxMatrixSum(_ matrix: [[Int]]) -> Int {
    var minNumber = Int.max
    var countOfMinusNumber = 0
    var sum = 0

    for row in matrix {
      for item in row {
        let absItem = abs(item)
        if absItem < minNumber {
          minNumber = absItem
        }
        if item < 0 {
          countOfMinusNumber += 1
        }
        sum += absItem
      }
    }

    return countOfMinusNumber & 1 == 0 ? sum : sum - minNumber * 2
  }
}
