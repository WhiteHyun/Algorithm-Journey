//
//  1636. Sort Array by Increasing Frequency.swift
//  https://leetcode.com/problems/sort-array-by-increasing-frequency/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/03.
//

final class LeetCode1636 {
  func frequencySort(_ nums: [Int]) -> [Int] {
    nums.reduce(into: [Int: Int]()) { partialResult, value in
      partialResult[value, default: 0] += 1
    }
    .sorted {
      ($0.value == $1.value && $0.key > $1.key) || $0.value < $1.value
    }
    .reduce(into: [Int]()) { partialResult, item in
      partialResult.append(contentsOf: Array(repeating: item.key, count: item.value))
    }
  }
}
