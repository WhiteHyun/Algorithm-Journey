//
//  78. Subsets.swift
//  https://leetcode.com/problems/subsets/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/21.
//

import Foundation

final class LeetCode78 {
  func subsets(_ nums: [Int]) -> [[Int]] {
    var subsets: [[Int]] = []
    var subset: [Int] = []
    func backTrack(_ index: Int) {
      subsets.append(subset)

      for i in index ..< nums.count {
        subset.append(nums[i])
        backTrack(i + 1)
        subset.removeLast()
      }
    }

    backTrack(0)

    return subsets
  }
}
