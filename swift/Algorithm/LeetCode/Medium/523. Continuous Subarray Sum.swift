//
//  523. Continuous Subarray Sum.swift
//  https://leetcode.com/problems/continuous-subarray-sum/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/08.
//

final class LeetCode523 {
  func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
    var dictionary: [Int: Int] = [:]
    dictionary[0] = -1

    var total = 0
    for i in 0 ..< nums.count {
      total += nums[i]
      total %= k

      if total == 0, i != 0 { return true }

      if let value = dictionary[total] {
        if i - value > 1 { return true }
      } else {
        dictionary[total] = i
      }
    }

    return false
  }
}
