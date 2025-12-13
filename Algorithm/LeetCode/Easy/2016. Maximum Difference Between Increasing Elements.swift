//
//  2016. Maximum Difference Between Increasing Elements.swift
//  https://leetcode.com/problems/maximum-difference-between-increasing-elements/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/06/16.
//

final class LeetCode2016 {
  func maximumDifference(_ numbers: [Int]) -> Int {
    var minNumber = numbers[0]
    var maxValue = -1

    for number in numbers.dropFirst() {
      if minNumber >= number {
        minNumber = number
      } else if maxValue < number - minNumber {
        print("number: \(number), minNumber: \(minNumber)")
        maxValue = number - minNumber
      }
    }
    return maxValue
  }
}
