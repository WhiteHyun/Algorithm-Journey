//
//  945. Minimum Increment to Make Array Unique.swift
//  https://leetcode.com/problems/minimum-increment-to-make-array-unique/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/14.
//

final class LeetCode945 {
  func minIncrementForUnique(_ nums: [Int]) -> Int {
    var sortedNumbers = nums.sorted()
    var count = 0

    for index in sortedNumbers.indices.dropFirst() where sortedNumbers[index - 1] >= sortedNumbers[index] {
      count += abs(sortedNumbers[index] - sortedNumbers[index - 1]) + 1
      sortedNumbers[index] = sortedNumbers[index - 1] + 1
    }

    return count
  }
}
