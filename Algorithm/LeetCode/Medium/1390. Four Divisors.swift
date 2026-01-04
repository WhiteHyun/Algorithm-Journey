//
//  1390. Four Divisors.swift
//  https://leetcode.com/problems/four-divisors/description/
//  Algorithm
//
//  Created by 홍승현 on 2026/01/04.
//

import Foundation

final class LeetCode1390 {
  func sumFourDivisors(_ nums: [Int]) -> Int {
    let countByNumber: [Int: Int] = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)

    var sum = 0

    numberLoop: for (number, count) in countByNumber {
      var divisorPairCount = 0
      var divisorSum = 0
      for key in 1 ... Int(sqrt(Double(number))) where number % key == 0 {
        if divisorPairCount >= 2 || number / key == key {
          continue numberLoop
        }

        divisorPairCount += 1
        divisorSum += key + number / key
      }

      if divisorPairCount == 2 {
        sum += divisorSum * count
      }
    }

    return sum
  }
}
