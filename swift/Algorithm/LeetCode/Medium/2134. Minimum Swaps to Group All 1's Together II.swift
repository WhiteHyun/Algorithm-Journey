//
//  2134. Minimum Swaps to Group All 1's Together II.swift
//  https://leetcode.com/problems/minimum-swaps-to-group-all-1s-together-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/02.
//

final class LeetCode2134 {
  func minSwaps(_ nums: [Int]) -> Int {
    let n = nums.count

    let onesCount = nums.reduce(0, +)
    var windowOnes = nums[0 ..< onesCount].reduce(0, +)
    var maxWindowOnes = windowOnes
    for index in 1 ..< n {
      windowOnes += nums[(index + onesCount - 1) % n] - nums[(index - 1) % n]
      maxWindowOnes = max(maxWindowOnes, windowOnes)
    }
    return onesCount - maxWindowOnes
  }
}
