//
//  3110. Score of a String.swift
//  https://leetcode.com/problems/score-of-a-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/01.
//

import Foundation

final class LeetCode3110 {
  func scoreOfString(_ s: String) -> Int {
    let asciiNumbers = s.compactMap(\.asciiValue).map(Int.init)

    var answer = 0
    for index in asciiNumbers.indices.dropLast() {
      answer += abs(asciiNumbers[index] - asciiNumbers[index + 1])
    }

    return answer
  }
}
