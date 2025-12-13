//
//  2914. Minimum Number of Changes to Make Binary String Beautiful.swift
//  https://leetcode.com/problems/minimum-number-of-changes-to-make-binary-string-beautiful/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/05.
//

final class LeetCode2914 {
  func minChanges(_ s: String) -> Int {
    guard s.count & 1 == 0 else { return -1 }
    var count = 0
    let array = Array(s)

    for i in stride(from: 0, to: array.count, by: 2) where array[i] != array[i + 1] {
      count += 1
    }

    return count
  }
}
