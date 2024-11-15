//
//  2064. Minimized Maximum of Products Distributed to Any Store.swift
//  https://leetcode.com/problems/minimized-maximum-of-products-distributed-to-any-store/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/14.
//

final class LeetCode2064 {
  func minimizedMaximum(_ n: Int, _ quantities: [Int]) -> Int {
    func canDistribute(_ maxAmount: Int) -> Bool {
     var storesNeeded = 0

      for quantity in quantities {
        storesNeeded += (quantity + maxAmount - 1) / maxAmount
        if storesNeeded > n {
          return false
        }
      }

      return true
    }

    var left = quantities.reduce(n - 1, +) / n // 올림 나눗셈
    var right = quantities.max() ?? 0
    var result = right

    while left <= right {
      let mid = (left + right) >> 1
      if canDistribute(mid) {
        result = mid
        right = mid - 1
      } else {
        left = mid + 1
      }
    }

    return result
  }
}
