//
//  22. Generate Parentheses.swift
//  https://leetcode.com/problems/generate-parentheses/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/31.
//

final class LeetCode22 {
  func generateParenthesis(_ n: Int) -> [String] {
    var results: [String] = []

    func backTrack(_ openCount: Int, _ closedCount: Int, _ target: String) {
      if openCount == n {
        results.append(target + String(repeating: ")", count: n - closedCount))
        return
      }

      backTrack(openCount + 1, closedCount, target + "(")
      if openCount > closedCount {
        backTrack(openCount, closedCount + 1, target + ")")
      }
    }

    backTrack(0, 0, "")

    return results
  }
}
