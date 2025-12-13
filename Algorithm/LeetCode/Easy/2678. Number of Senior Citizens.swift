//
//  2678. Number of Senior Citizens.swift
//  https://leetcode.com/problems/number-of-senior-citizens/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/01.
//

final class LeetCode2678 {
  func countSeniors(_ details: [String]) -> Int {
    details
      .compactMap { Int($0[11 ... 12]) }
      .count(where: { $0 > 60 })
  }
}
