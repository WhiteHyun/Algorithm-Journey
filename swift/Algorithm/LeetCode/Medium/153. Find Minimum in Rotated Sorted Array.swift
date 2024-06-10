//
//  153. Find Minimum in Rotated Sorted Array.swift
//  https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/09.
//

final class LeetCode153 {
  func findMin(_ nums: [Int]) -> Int {
    var left = 0
    var right = nums.count - 1
    while left < right {
      let mid = (left + right) >> 1

      if nums[mid] > nums[right] {
        left = mid + 1
      } else {
        right = mid
      }
    }

    return nums[left]
  }
}
