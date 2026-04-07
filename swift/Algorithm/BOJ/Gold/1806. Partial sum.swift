//
//  1806. Partial sum.swift
//  https://www.acmicpc.net/problem/1806
//  Algorithm
//
//  Created by 홍승현 on 2024/05/17.
//

final class BOJ1806 {
  func partialSum(_ set: [Int], _ target: Int) -> Int {
    var left = 0
    var right = 0
    var minLength = Int.max
    var sum = 0

    while right < set.count {
      sum += set[right]

      while sum >= target {
        minLength = min(minLength, right - left + 1)
        sum -= set[left]
        left += 1
      }

      right += 1
    }

    return minLength == .max ? 0 : minLength
  }
}
