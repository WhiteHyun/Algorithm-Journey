//
//  287. Find the Duplicate Number.swift
//  https://leetcode.com/problems/find-the-duplicate-number/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/28.
//

final class LeetCode287 {
  func findDuplicate(_ nums: [Int]) -> Int {
    var hare = nums[0]
    var tortoise = nums[0]

    repeat {
      hare = nums[nums[hare]]
      tortoise = nums[tortoise]
    } while tortoise != hare

    var startIndex = nums[0]
    var loopedIndex = hare

    while startIndex != loopedIndex {
      startIndex = nums[startIndex]
      loopedIndex = nums[loopedIndex]
    }
    return startIndex
  }
}
