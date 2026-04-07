//
//  564. Find the Closest Palindrome.swift
//  https://leetcode.com/problems/find-the-closest-palindrome/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/24.
//

import Foundation

final class LeetCode564 {
  func nearestPalindromic(_ n: String) -> String {
    let number = Int(n)!
    if number <= 10 { return String(number - 1) }
    if number == 11 { return "9" }

    let length = n.count
    let leftHalf = Int(n.prefix((length + 1) >> 1))!

    let candidates: [Int] = [
      generatePalindrome(leftHalf - 1, isEven: length & 1 == 0),
      generatePalindrome(leftHalf, isEven: length & 1 == 0),
      generatePalindrome(leftHalf + 1, isEven: length & 1 == 0),
      Int(pow(10, Double(length - 1))) - 1,
      Int(pow(10, Double(length))) + 1,
    ]

    let result = candidates
      .filter { $0 != number }
      .min { abs($0 - number) < abs($1 - number) || abs($0 - number) == abs($1 - number) && $0 < $1 }!

    return String(result)
  }

  private func generatePalindrome(_ leftHalf: Int, isEven: Bool) -> Int {
    var palindrome = leftHalf
    var right = isEven ? leftHalf : leftHalf / 10
    while right > 0 {
      palindrome = palindrome * 10 + right % 10
      right /= 10
    }
    return palindrome
  }
}
