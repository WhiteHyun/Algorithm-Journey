//
//  2285. Maximum Total Importance of Roads.swift
//  https://leetcode.com/problems/maximum-total-importance-of-roads/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/28.
//

final class LeetCode2285 {
  func maximumImportance(_ n: Int, _ roads: [[Int]]) -> Int {
    zip(
      1 ... n,
      roads
        .joined()
        .reduce(into: Array(repeating: 0, count: n)) { $0[$1] += 1 }
        .sorted(),
    )
    .map(*)
    .reduce(0, +)
  }
}
