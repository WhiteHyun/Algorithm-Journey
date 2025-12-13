//
//  131. Palindrome Partitioning.swift
//  https://leetcode.com/problems/palindrome-partitioning/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/22.
//

import Foundation

final class LeetCode131 {
  func partition(_ s: String) -> [[String]] {
    var results: [[String]] = []
    func recursion(_ index: String.Index, _ array: [String]) {
      guard index < s.endIndex
      else {
        if String(array.last!.reversed()) == array.last! {
          results.append(array)
        }
        return
      }

      let newCharacter = s[index]

      // evaluate palindrome
      if array.isEmpty || isPalindrome(array.last!) {
        recursion(s.index(after: index), array + [String(newCharacter)])
      }

      if !array.isEmpty {
        recursion(s.index(after: index), array.dropLast() + [array.last! + String(newCharacter)])
      }
    }

    recursion(s.startIndex, [])

    return results
  }

  private func isPalindrome(_ target: String) -> Bool {
    var left = target.index(target.startIndex, offsetBy: 0)
    var right = target.index(target.startIndex, offsetBy: target.count - 1)
    while left < right {
      if target[left] != target[right] {
        return false
      }
      left = target.index(after: left)
      right = target.index(before: right)
    }
    return true
  }
}
