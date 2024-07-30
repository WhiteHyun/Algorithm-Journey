//
//  2191. Sort the Jumbled Numbers.swift
//  https://leetcode.com/problems/sort-the-jumbled-numbers/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/28.
//

// MARK: - LeetCode2191

final class LeetCode2191 {
  func sortJumbled(_ mapping: [Int], _ nums: [Int]) -> [Int] {
    zip(nums, nums.map { mapped(mapping, $0) })
      .sorted { $0.1 < $1.1 }
      .map(\.0)
  }

  private func mapped(_ mapping: [Int], _ number: Int, _ base: Int = 1) -> Int {
    if number < 10 {
      base * mapping[number % 10]
    } else {
      base * mapping[number % 10] + mapped(mapping, number / 10, base * 10)
    }
  }
}
