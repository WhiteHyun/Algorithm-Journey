//
//  1915. Number of Wonderful Substrings.swift
//  https://leetcode.com/problems/number-of-wonderful-substrings/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/30.
//

import Foundation

final class LeetCode1915 {
  func wonderfulSubstrings(_ word: String) -> Int {
    var answer = 0
    var countDictionary = [0: 1]
    var bitMask = 0

    let a: Character = "a"

    for character in word {
      bitMask ^= 1 << (character.asciiValue! - a.asciiValue!)
      answer += countDictionary[bitMask, default: 0]

      for i in 0 ..< 10 {
        answer += countDictionary[bitMask ^ (1 << i), default: 0]
      }

      countDictionary[bitMask, default: 0] += 1
    }

    return answer
  }
}
