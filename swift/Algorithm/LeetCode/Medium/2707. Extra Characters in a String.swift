//
//  2707. Extra Characters in a String.swift
//  https://leetcode.com/problems/extra-characters-in-a-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/23.
//

final class LeetCode2707 {
  func minExtraChar(_ s: String, _ dictionary: [String]) -> Int {
    let cache: Set<String> = Set(dictionary)
    var dp: [Int] = Array(0 ... s.count)

    for i in 1 ... s.count {
      dp[i] = dp[i - 1] + 1
      for j in 0 ..< i {
        let substring = String(s.prefix(i).suffix(i - j))
        if cache.contains(substring) {
          dp[i] = min(dp[i], dp[j])
        }
      }
    }

    return dp.last!
  }
}
