//
//  476. Number Complement.swift
//  https://leetcode.com/problems/number-complement/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/03.
//

import Foundation

final class LeetCode476 {
  func findComplement(_ num: Int) -> Int {
    var number = num
    var bitArray: [Int] = []
    while number != 0 {
      bitArray.append(number % 2 == 0 ? 1 : 0)
      number >>= 1
    }

    return bitArray.indices.reduce(0) { result, nextIndex in
      result + bitArray[nextIndex] * (pow(2, nextIndex) as NSDecimalNumber).intValue
    }
  }
}
