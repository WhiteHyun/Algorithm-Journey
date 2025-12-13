//
//  2597. The Number of Beautiful Subsets.swift
//  https://leetcode.com/problems/the-number-of-beautiful-subsets/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/23.
//

import Foundation

final class LeetCode2597 {
  // MARK: - Runtime 5 ms / Memory 16.3 MB

  /// Counts the number of beautiful subsets in the given array.
  ///
  /// - Parameters:
  ///   - nums: The input array of positive integers.
  ///   - k: The positive integer representing the absolute difference.
  /// - Returns: The number of non-empty beautiful subsets.
  func beautifulSubsets(_ nums: [Int], _ k: Int) -> Int {
    let frequencyDict: [Int: Int] = .init(nums.map { ($0, 1) }, uniquingKeysWith: +)

    /// Calculates the number of beautiful subsets for a given number.
    ///
    /// - Parameter num: The current number.
    /// - Returns: A tuple containing the number of beautiful subsets without and with the current number.
    func countSubsets(_ num: Int) -> (Int, Int) {
      let (subsetsWithoutNum, subsetsWithNum) = frequencyDict[num - k] != nil ? countSubsets(num - k) : (1, 0)
      return (subsetsWithoutNum + subsetsWithNum, subsetsWithoutNum * ((pow(2, frequencyDict[num]!) as NSDecimalNumber).intValue - 1))
    }

    return frequencyDict
      .filter { num, _ in
        frequencyDict[num + k] == nil
      }
      .map { num, _ in
        let subsetCounts = countSubsets(num)
        return subsetCounts.0 + subsetCounts.1
      }
      .reduce(1, *) - 1
  }

  // MARK: - Runtime 2109 ms / Memory 16.44 MB

  func beautifulSubsetsBackTracking(_ nums: [Int], _ k: Int) -> Int {
    var count = -1
    let nums = nums.sorted()
    func backTrack(_ index: Int, _ set: Set<Int>) {
      for element in set where set.contains(element + k) {
        return
      }

      count += 1

      if index == nums.count { return }

      for i in index ..< nums.count {
        backTrack(i + 1, set.union([nums[i]]))
      }
    }

    backTrack(0, [])

    return count
  }
}
