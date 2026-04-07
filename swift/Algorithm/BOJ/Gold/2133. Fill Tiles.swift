//
//  2133. Fill Tiles.swift
//  https://www.acmicpc.net/problem/2133
//  Algorithm
//
//  Created by 홍승현 on 2024/05/30.
//

import Foundation

final class BOJ2133 {
  func solution(_ n: Int) -> Int {
    var dp: [Int] = .init(repeating: 0, count: 30)
    dp[1] = 3

    // 홀수는 안 됨
    for i in stride(from: 3, through: 30, by: 2) {
      // 2 칸 생긴 만큼 이전 크기 * 3으로 경우의 수 추가
      dp[i] = dp[i - 2] * 3

      // 특수한 칸에 관하여 왼쪽만 계산된 상태므로, 가운데, 오른쪽에 관한 경우의 수도 생각해야함
      for j in stride(from: i - 4, through: 1, by: -2) {
        dp[i] += dp[j] * 2
      }

      // 자신의 길이만큼의 특수한 칸이 2개 존재함
      dp[i] += 2
    }

    return dp[n - 1]
  }
}
