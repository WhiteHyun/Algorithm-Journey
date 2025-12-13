//
//  3075. Maximize Happiness of Selected Children.swift
//  https://leetcode.com/problems/maximize-happiness-of-selected-children/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/09.
//

import Foundation

final class LeetCode3075 {
  func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
    happiness
      .sorted(by: >)
      .prefix(k)
      .enumerated()
      .reduce(0) { partialResult, element in
        partialResult + max(0, element.element - element.offset)
      }
  }
}
