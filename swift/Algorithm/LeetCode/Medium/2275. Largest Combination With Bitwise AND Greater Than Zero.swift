//
//  2275. Largest Combination With Bitwise AND Greater Than Zero.swift
//  https://leetcode.com/problems/largest-combination-with-bitwise-and-greater-than-zero/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/07.
//

final class LeetCode2275 {
  func largestCombination(_ numbers: [Int]) -> Int {
    // 10_000_000의 2진수 길이는 24자리
    var array: [Int] = .init(repeating: 0, count: 24)
    for number in numbers {
      for i in array.indices {
        array[i] += number >> i & 1
      }
    }
    return array.max()!
  }
}
