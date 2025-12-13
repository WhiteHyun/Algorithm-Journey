//
//  567. Permutation in String.swift
//  https://leetcode.com/problems/permutation-in-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/05.
//

final class LeetCode567 {
  func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    if s1.count > s2.count {
      return false
    }

    let s1 = Array(s1.unicodeScalars)
    let s2 = Array(s2.unicodeScalars)

    var s1Memoization: [Int] = .init(repeating: 0, count: 26)
    var s2Memoization: [Int] = .init(repeating: 0, count: 26)

    for i in 0 ..< s1.count {
      s1Memoization[Int(s1[i].value - 97)] += 1
    }

    for i in 0 ..< s2.count {
      if i >= s1.count {
        s2Memoization[Int(s2[i - s1.count].value - 97)] -= 1
      }
      s2Memoization[Int(s2[i].value - 97)] += 1
      if s2Memoization == s1Memoization {
        return true
      }
    }

    return false
  }
}
