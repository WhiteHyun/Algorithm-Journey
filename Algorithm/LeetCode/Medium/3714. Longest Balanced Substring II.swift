//
//  3714. Longest Balanced Substring II.swift
//  https://leetcode.com/problems/longest-balanced-substring-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2026/02/13.
//

final class LeetCode3714 {
  func longestBalanced(_ s: String) -> Int {
    let chars = Array(s)
    var result = 1

    // 1) 단일 문자: 연속된 같은 문자의 최대 길이
    var runLength = 1
    for i in 1 ..< chars.count {
      if chars[i] == chars[i - 1] {
        runLength += 1
      } else {
        result = max(result, runLength)
        runLength = 1
      }
    }
    result = max(result, runLength)

    // 2) 2종류: 제외할 문자 기준으로 분할 후 prefix sum + HashMap
    let pairs: [(Character, Character)] = [
      ("c", "a"), // c 제외 → a: +1, b: -1
      ("b", "a"), // b 제외 → a: +1, c: -1
      ("a", "b"), // a 제외 → b: +1, c: -1
    ]

    for (excluded, plus) in pairs {
      for segment in s.split(separator: excluded) {
        var prefixMap: [Int: Int] = [0: -1]
        var prefix = 0
        for (i, ch) in segment.enumerated() {
          prefix += ch == plus ? 1 : -1
          if let first = prefixMap[prefix] {
            result = max(result, i - first)
          } else {
            prefixMap[prefix] = i
          }
        }
      }
    }

    // 3) 3종류: state = (countA - countB, countA - countC), HashMap
    var stateMap: [[Int]: Int] = [[0, 0]: -1]
    var cA = 0, cB = 0, cC = 0

    for i in 0 ..< chars.count {
      switch chars[i] {
      case "a": cA += 1
      case "b": cB += 1
      default: cC += 1
      }
      let key = [cA - cB, cA - cC]
      if let first = stateMap[key] {
        result = max(result, i - first)
      } else {
        stateMap[key] = i
      }
    }

    return result
  }
}
