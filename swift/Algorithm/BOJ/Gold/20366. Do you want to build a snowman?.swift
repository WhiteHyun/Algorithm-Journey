//
//  20366. Do you want to build a snowman?.swift
//  https://www.acmicpc.net/problem/20366
//  Algorithm
//
//  Created by 홍승현 on 2024/04/26.
//

import Foundation

final class BOJ20366 {
  func minDifference(_ snowballs: [Int]) -> Int {
    var minDiff = Int.max
    let sortedSnowballs = snowballs.sorted()
    let n = sortedSnowballs.count

    var combinations: [(sum: Int, one: Int, two: Int)] = []

    for i in 0 ..< n - 1 {
      for j in (i + 1) ..< n {
        combinations.append((sortedSnowballs[i] + sortedSnowballs[j], i, j))
      }
    }

    combinations.sort { lhs, rhs in
      lhs.sum < rhs.sum
    }

    var left = 0
    var right = 1
    while right < combinations.endIndex {
      let (lSum, l1, l2) = combinations[left]
      let (rSum, r1, r2) = combinations[right]

      if l1 == r1 || l2 == r2 || l1 == r2 || l2 == r1 {
        right += 1
        continue
      }

      left += 1
      right = left + 1

      minDiff = min(minDiff, abs(lSum - rSum))
      if minDiff == 0 {
        break
      }
    }

    return minDiff
  }
}
