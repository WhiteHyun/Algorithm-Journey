//
//  2486. Append Characters to String to Make Subsequence.swift
//  https://leetcode.com/problems/append-characters-to-string-to-make-subsequence/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/03.
//

import Foundation

final class LeetCode2486 {
  func appendCharacters(_ s: String, _ t: String) -> Int {
    var i = 0
    var j = 0
    let sArray = Array(s)
    let tArray = Array(t)

    while i < sArray.count, j < tArray.count {
      if sArray[i] == tArray[j] {
        i += 1
        j += 1
      } else {
        i += 1
      }
    }
    return tArray.count - j
  }
}
