//
//  153. Find Minimum in Rotated Sorted Array.swift
//  https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/09.
//

final class LeetCode153 {
  func findMin(_ nums: [Int]) -> Int {
    // 이분탐색으로 푸는 게 더 시간 효율에 좋음!
    nums.min()!
  }
}
