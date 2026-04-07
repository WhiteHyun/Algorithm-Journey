//
//  860. Lemonade Change.swift
//  https://leetcode.com/problems/lemonade-change/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/15.
//

final class LeetCode860 {
  func lemonadeChange(_ bills: [Int]) -> Bool {
    var dictionary: [Int: Int] = [5: 0, 10: 0]

    for bill in bills {
      if bill == 5 {
        dictionary[5]! += 1
        continue
      }
      if bill == 10 {
        guard dictionary[5]! >= 1 else { return false }
        dictionary[5]! -= 1
        dictionary[10]! += 1
        continue
      }

      guard dictionary[10]! * 2 + dictionary[5]! >= 3 else { return false }

      guard dictionary[5]! >= 1 else { return false }

      if dictionary[10]! >= 1 {
        dictionary[10]! -= 1
        dictionary[5]! -= 1
      } else {
        dictionary[5]! -= 3
      }
    }
    return true
  }
}
