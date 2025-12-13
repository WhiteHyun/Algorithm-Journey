//
//  179. Largest Number.swift
//  https://leetcode.com/problems/largest-number/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/18.
//

final class LeetCode179 {
  func largestNumber(_ nums: [Int]) -> String {
    let sortedNumberString = nums.map(String.init).sorted { lhs, rhs in
      lhs + rhs > rhs + lhs
    }
    return sortedNumberString.first == "0" ? "0" : sortedNumberString.joined()
  }
}
