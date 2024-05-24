//
//  190. Reverse Bits.swift
//  https://leetcode.com/problems/reverse-bits/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/24.
//

import Foundation

final class LeetCode190 {
  // MARK: - Runtime: 5ms / Memory 16.12 MB

  func reverseBits(_ n: Int) -> Int {
    let reversedStringBits = String(String(n, radix: 2).reversed())
    return Int(reversedStringBits + String(repeating: "0", count: 32 - reversedStringBits.count), radix: 2)!
  }

  // MARK: - Runtime: 5ms / Memory 15.72 MB

  func reverseBits2(_ n: Int) -> Int {
    var answer = 0

    for index in 0 ..< 32 {
      answer += ((n >> (32 - index - 1)) & 1) << index
    }
    return answer
  }
}
