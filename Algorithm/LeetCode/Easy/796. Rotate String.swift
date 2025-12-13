//
//  796. Rotate String.swift
//  https://leetcode.com/problems/rotate-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/03.
//

final class LeetCode796 {
  func rotateString(_ s: String, _ goal: String) -> Bool {
    if s.count != goal.count { return false }
    return (s + s).contains(goal)
  }
}
