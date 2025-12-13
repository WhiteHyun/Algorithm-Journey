//
//  1912. Continuous sum.swift
//  https://www.acmicpc.net/problem/1912
//  Algorithm
//
//  Created by 홍승현 on 2024/05/06.
//

import Foundation

final class BOJ1912 {
  func continuousSum(_ sequence: [Int]) -> Int {
    var dp: [Int] = .init(repeating: 0, count: sequence.count)
    dp[0] = sequence[0]
    for i in 1 ..< sequence.endIndex {
      dp[i] = max(sequence[i], sequence[i] + dp[i - 1])
    }

    return dp.max()!
  }
}
