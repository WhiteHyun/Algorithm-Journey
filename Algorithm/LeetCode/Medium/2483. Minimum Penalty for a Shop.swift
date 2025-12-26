//
//  2483. Minimum Penalty for a Shop.swift
//  https://leetcode.com/problems/minimum-penalty-for-a-shop/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/26.
//

final class LeetCode2483 {
  func bestClosingTime(_ customers: String) -> Int {
    // 0시에 문을 닫을 경우 초기 패널티 계산
    var currentPanelty = customers.count { $0 == "Y" }
    var minimumPanelty = currentPanelty
    var bestTime = 0

    // 각 시간을 순차적으로 검사
    for (index, element) in customers.enumerated() {
      // 영업 시간을 1시간 연장할 경우:
      // - customers[i]가 Y이면 (이제 영업 중이므로) 페널티 감소
      // - customers[i]가 N이면 (불필요하게 가게를 열었으므로) 페널티 증가
      if element == "Y" {
        currentPanelty -= 1
      } else {
        currentPanelty += 1
      }

      if currentPanelty < minimumPanelty {
        minimumPanelty = currentPanelty
        bestTime = index + 1
      }
    }

    return bestTime
  }
}
