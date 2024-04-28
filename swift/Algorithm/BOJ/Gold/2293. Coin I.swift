//
//  2293. Coin I.swift
//  https://www.acmicpc.net/problem/2293
//  Algorithm
//
//  Created by 홍승현 on 2024/04/28.
//

import Foundation

final class BOJ2293 {
  func solution(target: Int, coins: [Int]) -> Int {
    let sortedCoins = coins.sorted()
    var dp: [Int] = .init(repeating: 0, count: target + 1)

    dp[0] = 1

    for coin in sortedCoins where coin <= target {
      for i in coin ... target {
        dp[i] &+= dp[i - coin]
      }
    }

    return dp.last!
  }
}
