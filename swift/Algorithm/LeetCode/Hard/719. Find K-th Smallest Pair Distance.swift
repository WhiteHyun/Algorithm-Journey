//
//  719. Find K-th Smallest Pair Distance.swift
//  https://leetcode.com/problems/find-k-th-smallest-pair-distance/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/14.
//

final class LeetCode719 {
  func smallestDistancePair(_ nums: [Int], _ k: Int) -> Int {
    let sortedNumbers = nums.sorted()
    let n = nums.count
    var left = 0
    var right = sortedNumbers[n - 1] - sortedNumbers[0]

    while left < right {
      let mid = (left + right) >> 1
      var count = 0
      var j = 0

      for i in sortedNumbers.indices {
        while j < n, sortedNumbers[j] - sortedNumbers[i] <= mid {
          j += 1
        }
        count += j - i - 1
      }

      if count < k {
        left = mid + 1
      } else {
        right = mid
      }
    }

    return left
  }
}
