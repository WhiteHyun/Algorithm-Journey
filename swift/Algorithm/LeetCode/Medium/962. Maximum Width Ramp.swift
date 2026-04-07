//
//  962. Maximum Width Ramp.swift
//  https://leetcode.com/problems/maximum-width-ramp/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/10.
//

final class LeetCode962 {
  func maxWidthRamp(_ nums: [Int]) -> Int {
    var monotonicStack: [Int] = []
    var maxWidth = 0

    // 단조 감소 스택 생성
    for i in nums.indices where monotonicStack.isEmpty || nums[i] < nums[monotonicStack.last!] {
      monotonicStack.append(i)
    }

    // 역방향 순회
    for i in nums.indices.reversed() {
      while !monotonicStack.isEmpty, nums[i] >= nums[monotonicStack.last!] {
        maxWidth = max(maxWidth, i - monotonicStack.removeLast())
      }
    }

    return maxWidth
  }
}
