//
//  1684. Count the Number of Consistent Strings.swift
//  https://leetcode.com/problems/count-the-number-of-consistent-strings/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/12.
//

final class LeetCode1684 {
  func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    let allowedBits = bitManipulating(allowed)
    return words.filter { bitManipulating($0) | allowedBits == allowedBits }.count
  }

  @inline(__always)
  private func bitManipulating(_ string: String) -> Int {
    string.utf8.map { character in 1 << (character - 97) }.reduce(0, |)
  }
}
