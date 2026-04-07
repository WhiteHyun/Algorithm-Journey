//
//  3016. Minimum Number of Pushes to Type Word II.swift
//  https://leetcode.com/problems/minimum-number-of-pushes-to-type-word-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/06.
//

final class LeetCode3016 {
  func minimumPushes(_ word: String) -> Int {
    let dictionary: [Character: Int] = .init(word.map { ($0, 1) }, uniquingKeysWith: +)
    var count = 0
    for (index, value) in dictionary.values.sorted(by: >).enumerated() {
      count += (value * (index / 8 + 1))
    }
    return count
  }
}
