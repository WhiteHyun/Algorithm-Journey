//
//  2560. Straw Worm.swift
//  https://www.acmicpc.net/problem/2560
//  Algorithm
//
//  Created by 홍승현 on 2024/05/25.
//

import Foundation

final class BOJ2560 {
  func solution(_ maturityAge: Int, _ reproductionEndAge: Int, _ deathAge: Int, _ elapsedDays: Int) -> Int {
    if elapsedDays < maturityAge { return 1 }
    var dp = Array(repeating: 1, count: elapsedDays + 1)

    for day in maturityAge ... elapsedDays {
      dp[day] = (dp[day - 1] + dp[day - maturityAge]) % 1000 // 성체가 된 짚신벌레가 새로운 개체를 만듦

      if day >= reproductionEndAge {
        // 번식을 멈춘 짚신벌레의 수를 뺌
        // 음수일 수도 있으므로 1000을 더함, 어차피 나머지를 구할 때 0으로 처리되기 때문에 1000으로 더해도 상관 없음
        dp[day] = (dp[day] - dp[day - reproductionEndAge] + 1000) % 1000
      }
    }

    // 구한 짚신벌레에서 (n - d)일째에 존재했던 짚신벌레를 제거해야
    // N일째에 존재하는 짚신벌레를 찾을 수 있음
    return elapsedDays >= deathAge ? (dp[elapsedDays] + 1000 - dp[elapsedDays - deathAge]) % 1000 : dp[elapsedDays]
  }
}
