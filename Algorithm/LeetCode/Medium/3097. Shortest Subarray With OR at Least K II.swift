//
//  3097. Shortest Subarray With OR at Least K II.swift
//  https://leetcode.com/problems/shortest-subarray-with-or-at-least-k-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/11.
//

final class LeetCode3097 {
  func minimumSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
    var addedNumber = 0
    var start = 0
    var end = 0
    var length = Int.max
    while start <= end, end < nums.count {
      if addedNumber >= k {
        length = min(length, end - start + 1)
        addedNumber -= nums[start]
        start += 1
      } else {
        addedNumber += nums[end]
        end += 1
      }
      if length == 1 { return 1 }
    }
    return length == .max ? -1 : length
  }
}
