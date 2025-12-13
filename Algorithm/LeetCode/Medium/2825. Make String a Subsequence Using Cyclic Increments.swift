//
//  2825. Make String a Subsequence Using Cyclic Increments.swift
//  https://leetcode.com/problems/make-string-a-subsequence-using-cyclic-increments/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/12/04.
//

final class LeetCode2825 {
  func canMakeSubsequence(_ str1: String, _ str2: String) -> Bool {
    let str1AsciiArray = str1.compactMap(\.asciiValue).map { Int($0) - 97 }
    let str2AsciiArray = str2.compactMap(\.asciiValue).map { Int($0) - 97 }

    var str1Pointer = 0
    var str2Pointer = 0

    while str1Pointer < str1AsciiArray.count, str2Pointer < str2AsciiArray.count {
      if str1AsciiArray[str1Pointer] == str2AsciiArray[str2Pointer] {
        str1Pointer += 1
        str2Pointer += 1
      } else if (str1AsciiArray[str1Pointer] + 1) % 26 == str2AsciiArray[str2Pointer] {
        str1Pointer += 1
        str2Pointer += 1
      } else {
        str1Pointer += 1
      }
    }

    return str2Pointer == str2AsciiArray.count
  }
}
