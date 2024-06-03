//
//  15. 3Sum.swift
//  https://leetcode.com/problems/3sum/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/01.
//

import Foundation

final class LeetCode15 {
  func threeSum(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    let sorted = nums.sorted()

    for (index, element) in sorted.enumerated() where index <= 0 || element != sorted[index - 1] {
      var left = index + 1
      var right = sorted.count - 1

      while left < right {
        let threeSum = element + sorted[left] + sorted[right]
        if threeSum > 0 {
          right -= 1
          continue
        }
        if threeSum < 0 {
          left += 1
          continue
        }

        result.append([element, sorted[left], sorted[right]])
        left += 1

        while sorted[left] == sorted[left - 1] && left < right {
          left += 1
        }
      }
    }


    return result
  }
}
