//
//  11. Container With Most Water.swift
//  https://leetcode.com/problems/container-with-most-water/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/08.
//

final class LeetCode11 {
  func maxArea(_ height: [Int]) -> Int {
    var totalArea = 0
    var left = 0
    var right = height.endIndex - 1

    while left < right {
      let area = (right - left) * min(height[left], height[right])
      if area > totalArea {
        totalArea = area
      }

      if height[left] < height[right] {
        left += 1
      } else {
        right -= 1
      }
    }

    return totalArea
  }
}
