//
//  3133. Minimum Array End.swift
//  https://leetcode.com/problems/minimum-array-end/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/10.
//

final class LeetCode3133 {
  func minEnd(_ n: Int, _ x: Int) -> Int {
    var result = x
    var index = n - 1
    var mask = 1

    while index != 0 {
      if result & mask == 0 {
        result |= index & 1 * mask
        index >>= 1
      }

      mask <<= 1
    }
    return result
  }

  // n=7 x=4
  // 4:   100 - 0
  // 5:   101 - 1
  // 6:   110 - 2
  // 7:   111 - 3
  // 12: 1100 - 4
  // 13: 1101 - 5
  // 14: 1110 - 6

  // n=5 x=4
  // 5:   101 - 0
  // 7:   111 - 1
  // 13: 1101 - 2
  // 15: 1111 - 3
}
