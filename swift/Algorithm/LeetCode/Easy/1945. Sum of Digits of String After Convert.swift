//
//  1945. Sum of Digits of String After Convert.swift
//  https://leetcode.com/problems/sum-of-digits-of-string-after-convert/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/03.
//

import Foundation

final class LeetCode1945 {
  private func transform(_ number: Int) -> Int {
    var number = number
    var sum = 0
    while number != 0 {
      sum += number % 10
      number /= 10
    }
    return sum
  }

  func getLucky(_ s: String, _ k: Int) -> Int {
    var result = s.reduce(into: 0) { partialResult, element in
      partialResult += transform(Int(element.asciiValue!) - 96)
    }
    for _ in 1 ..< k {
      result = transform(result)
    }
    return result
  }
}
