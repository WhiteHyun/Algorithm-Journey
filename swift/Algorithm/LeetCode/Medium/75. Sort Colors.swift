//
//  75. Sort Colors.swift
//  https://leetcode.com/problems/sort-colors/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/12.
//

/// LeetCode75 problem
///
/// `Dutch National Flag Problem`로 유명한 문제풀이 기법
/// Time Complexity: O(n), Space Complexity: O(1)
final class LeetCode75 {
  func sortColors(_ nums: inout [Int]) {
    var left = 0
    var mid = 0
    var right = nums.count - 1

    while mid <= right {
      if nums[mid] == 0 {
        nums.swapAt(left, mid)
        left += 1
        mid += 1
      } else if nums[mid] == 1 {
        mid += 1
      } else {
        nums.swapAt(mid, right)
        right -= 1
      }
    }
  }
}
