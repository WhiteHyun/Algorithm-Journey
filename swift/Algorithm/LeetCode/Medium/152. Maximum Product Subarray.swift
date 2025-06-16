//
//  152. Maximum Product Subarray.swift
//  https://leetcode.com/problems/maximum-product-subarray/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/14.
//

final class LeetCode152 {
  func maxProduct(_ nums: [Int]) -> Int {
    var maxNumber = nums[0]
    var minNumber = nums[0]
    var answer = nums[0]
    let negativeCount = nums.count(where: { $0 < 0 })

    for index in 1 ..< nums.count {
      let current = nums[index]

      let tempMin = minNumber
      let tempMax = maxNumber

      maxNumber = max(current, tempMin * current, tempMax * current)
      if negativeCount > 1 {
        minNumber = min(current, tempMin * current, tempMax * current)
      } else {
        minNumber = 0
      }
      if answer < maxNumber {
        answer = maxNumber
      }
    }

    return answer
  }
}
