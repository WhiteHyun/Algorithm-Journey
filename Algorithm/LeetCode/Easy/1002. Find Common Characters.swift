//
//  1002. Find Common Characters.swift
//  https://leetcode.com/problems/find-common-characters/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/05.
//

final class LeetCode1002 {
  func commonChars(_ words: [String]) -> [String] {
    let counters = words
      .map {
        Dictionary($0.map { ($0, 1) }, uniquingKeysWith: +)
      }

    let targetWords = words
      .map(Set.init)
      .reduce(Set(words[0])) {
        $0.intersection($1)
      }

    let answer: [String] = targetWords
      .flatMap { character in
        let count = counters.map { $0[character, default: 0] }.min() ?? 0
        return Array(repeating: String(character), count: count)
      }

    return answer
  }
}
