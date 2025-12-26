//
//  2483. Minimum Penalty for a Shop.swift
//  https://leetcode.com/problems/minimum-penalty-for-a-shop/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/26.
//

/// 열었을 때는 N인 경우 패널티 1
/// 닫았을 때 Y인 경우 패널티 1
final class LeetCode2483 {
  func bestClosingTime(_ customers: String) -> Int {
    let customersArray = Array(customers) + ["N"]
    var nCount = Array(repeating: 0, count: customersArray.count)
    var yCount = Array(repeating: 0, count: customersArray.count)

    for i in customersArray.indices {
      if i > 0 {
        nCount[i] = nCount[i - 1]
        yCount[customersArray.count - i - 1] = yCount[customersArray.count - i]
      }

      if i > 0,
         customersArray[i - 1] == "N" {
        nCount[i] += 1
      }

      if customersArray[customersArray.count - i - 1] == "Y" {
        yCount[customersArray.count - i - 1] += 1
      }
    }

    let sum = zip(nCount, yCount).map(+)

    let minIndex = sum.firstIndex(of: sum.min()!)!

    return minIndex
  }
}
