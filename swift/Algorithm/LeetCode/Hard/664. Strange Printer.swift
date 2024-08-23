//
//  664. Strange Printer.swift
//  https://leetcode.com/problems/strange-printer/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/21.
//

final class LeetCode664 {
  func strangePrinter(_ s: String) -> Int {
    let n = s.count
    let chars = Array(s)
    // dp[i][j]는 부분 문자열 s[i...j]을 출력하는 데 필요한 최소 횟수.
    var dp = Array(repeating: Array(repeating: 1, count: n), count: n)

    if n < 2 {
      return 1
    }

    for length in 2 ... n {
      for i in 0 ... n - length {
        let j = i + length - 1

        if chars[i] == chars[j] {
          dp[i][j] = dp[i][j - 1]
          continue
        }

        dp[i][j] = length
        for k in i ..< j {
          dp[i][j] = min(dp[i][j], dp[i][k] + dp[k + 1][j])
        }
      }
    }

    return dp[0][n - 1]
  }
}
