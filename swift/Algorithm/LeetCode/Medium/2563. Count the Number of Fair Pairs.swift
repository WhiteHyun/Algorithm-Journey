//
//  2563. Count the Number of Fair Pairs.swift
//  https://leetcode.com/problems/count-the-number-of-fair-pairs/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/13.
//

final class LeetCode2563 {
  func countFairPairs(_ nums: [Int], _ lower: Int, _ upper: Int) -> Int {
    let sortedNumbers = nums.sorted()
    var count = 0
    for index in sortedNumbers.indices {
      let low = lowerBound(sortedNumbers, lower - sortedNumbers[index], start: index + 1)
      let high = upperBound(sortedNumbers, upper - sortedNumbers[index], start: index + 1)
      count += high - low
    }
    return count
  }

  private func lowerBound(_ array: [Int], _ target: Int, start: Int) -> Int {
    var left = start
    var right = array.count

    while left < right {
      let mid = (left + right) >> 1
      if array[mid] < target {
        left = mid + 1
      } else {
        right = mid
      }
    }

    return left
  }

  private func upperBound(_ array: [Int], _ target: Int, start: Int) -> Int {
    var left = start
    var right = array.count

    while left < right {
      let mid = (left + right) >> 1
      if array[mid] <= target {
        left = mid + 1
      } else {
        right = mid
      }
    }

    return left
  }
}
