//
//  1371. Find the Longest Substring Containing Vowels in Even Counts.swift
//  https://leetcode.com/problems/find-the-longest-substring-containing-vowels-in-even-counts/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/15.
//

final class LeetCode1371 {
  func findTheLongestSubstring(_ s: String) -> Int {
    let vowels: [Character: Int] = ["a": 1, "e": 2, "i": 4, "o": 8, "u": 16]
    var prefixSum = 0
    var length = 0
    var cache: [Int] = .init(repeating: -1, count: 32)

    let array = Array(s)

    for index in array.indices {
      prefixSum ^= vowels[array[index], default: 0]

      if cache[prefixSum] == -1, prefixSum != 0 {
        cache[prefixSum] = index
      }
      length = max(length, index - cache[prefixSum])
    }

    return length
  }
}
