//
//  2220. Minimum Bit Flips to Convert Number.swift
//  https://leetcode.com/problems/minimum-bit-flips-to-convert-number/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/11.
//

final class LeetCode2220 {
  func minBitFlips(_ start: Int, _ goal: Int) -> Int {
    (start ^ goal).nonzeroBitCount
  }
}
