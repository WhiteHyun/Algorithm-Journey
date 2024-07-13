//
//  91. Decode Ways.swift
//  https://leetcode.com/problems/decode-ways/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/14.
//

final class LeetCode91 {
  func numDecodings(_ s: String) -> Int {
    var (current, previous) = (1, 0)
    let array = s.compactMap { Int(String($0)) }
    for index in array.indices.reversed() {
      if array[index] == 0 {
        (current, previous) = (0, current)
      } else if index + 1 < array.count, array[index] * 10 + array[index + 1] <= 26 {
        (current, previous) = (current + previous, current)
      } else {
        previous = current
      }
    }

    return current
  }
}
