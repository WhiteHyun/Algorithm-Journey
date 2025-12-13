//
//  2044. Count Number of Maximum Bitwise-OR Subsets.swift
//  https://leetcode.com/problems/count-number-of-maximum-bitwise-or-subsets/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/19.
//

final class LeetCode2044 {
  func countMaxOrSubsets(_ nums: [Int]) -> Int {
    let maximumOR = nums.reduce(0, |)
    var count = 0
    var targetArray: [Int] = []
    func backTracking(index: Int, orValue: Int) {
      if orValue == maximumOR {
        count += 1
      }
      if index == nums.count || orValue > maximumOR {
        return
      }

      for i in index ..< nums.count {
        targetArray.append(nums[i])
        backTracking(index: i + 1, orValue: orValue | nums[i])
        targetArray.removeLast()
      }
    }

    backTracking(index: 0, orValue: 0)

    return count
  }
}
