//
//  2294. Coins II.swift
//  https://www.acmicpc.net/problem/2294
//  Algorithm
//
//  Created by 홍승현 on 2024/05/21.
//

import Foundation

final class BOJ2294 {
  func solution(_ target: Int, _ coins: [Int]) -> Int {
    var dp: [Int] = .init(repeating: .max, count: target + 1)

    dp[0] = 0
    for coin in Set(coins) {
      for index in stride(from: coin, to: dp.count, by: 1) where dp[index - coin] != .max && dp[index - coin] + 1 < dp[index] {
        dp[index] = dp[index - coin] + 1
      }
    }

    return dp.last! == .max ? -1 : dp.last!
  }
}
