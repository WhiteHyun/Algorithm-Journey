//
//  214. Shortest Palindrome.swift
//  https://leetcode.com/problems/shortest-palindrome/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/20.
//

final class LeetCode214 {
  func shortestPalindrome(_ s: String) -> String {
    if s.count == 1 { return s }
    let stringArray = Array(s)
    var gap = 0
    while gap < stringArray.count {
      if isPalindrome(
        stringArray,
        start: stringArray.startIndex,
        end: stringArray.endIndex - 1 - gap
      ) {
        break
      }
      gap += 1
    }

    return s.suffix(gap).reversed() + s
  }

  private func isPalindrome(_ matrix: [Character], start: Int, end: Int) -> Bool {
    var s = start
    var e = end

    while s <= e {
      if matrix[s] != matrix[e] { return false }
      s += 1
      e -= 1
    }
    return true
  }
}
