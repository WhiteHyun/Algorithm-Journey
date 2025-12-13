//
//  3068. Find the Maximum Sum of Node Values.swift
//  https://leetcode.com/problems/find-the-maximum-sum-of-node-values/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/19.
//

import Foundation

final class LeetCode3068 {
  func maximumValueSum(_ nums: [Int], _ k: Int, _: [[Int]]) -> Int {
    var flag = 0
    var result = 0
    var minDifference = Int.max

    for number in nums {
      let xorNumber = number ^ k
      result += max(xorNumber, number)
      flag ^= number < xorNumber ? 1 : 0
      minDifference = min(minDifference, abs(xorNumber - number))
    }

    return result - minDifference * flag
  }
}
