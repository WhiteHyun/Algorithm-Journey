//
//  2601. Prime Subtraction Operation.swift
//  https://leetcode.com/problems/prime-subtraction-operation/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/11.
//

import Foundation

final class LeetCode2601 {
  func primeSubOperation(_ nums: [Int]) -> Bool {
    var primes: [Bool] = .init(repeating: true, count: 1001)
    primes[0] = false
    primes[1] = false

    for number in 2 ..< Int(sqrt(1001)) where primes[number] {
      for i in stride(from: number * 2, to: 1001, by: number) {
        primes[i] = false
      }
    }

    var array = nums

    for index in array.indices {
      var primeNumber = 0
      // strictly less than array[index]
      for number in stride(from: array[index] - 1, through: 0, by: -1) where primes[number] {
        if index == 0 || array[index] - number > array[index - 1] {
          primeNumber = number
          break
        }
      }
      if index != 0, primeNumber == 0, array[index - 1] >= array[index] {
        return false
      }
      array[index] -= primeNumber
    }

    return true
  }
}
