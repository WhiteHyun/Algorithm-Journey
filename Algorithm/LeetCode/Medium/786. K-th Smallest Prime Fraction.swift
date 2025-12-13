//
//  786. K-th Smallest Prime Fraction.swift
//  https://leetcode.com/problems/k-th-smallest-prime-fraction/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/10.
//

import Foundation

// MARK: - LeetCode786

final class LeetCode786 {
  // MARK: - Runtime 11 ms / Memory 15.85 MB

  func kthSmallestPrimeFraction(_ array: [Int], _ k: Int) -> [Int] {
    let n = array.count
    var left = 0.0
    var right = 1.0

    while left < right {
      let mid = (left + right) / 2
      var count = 0
      var maxFraction: [Int] = [0, 1]

      // Use two pointers to count the number of fractions less than or equal to `mid`
      var j = 1
      for i in array.indices {
        while j < n, Double(array[i]) >= mid * Double(array[j]) {
          j += 1
        }
        count += n - j

        // Update the maximum fraction found that is less than or equal to `mid`
        if j < n, maxFraction[0] * array[j] < array[i] * maxFraction[1] {
          maxFraction = [array[i], array[j]]
        }
      }

      if count == k {
        return maxFraction
      } else if count < k {
        left = mid
      } else {
        right = mid
      }
    }

    return []
  }

  // MARK: - Runtime 671 ms / Memory 65.28 MB

  func kthSmallestPrimeFractionBigO_NSquare(_ array: [Int], _ k: Int) -> [Int] {
    struct Element: Hashable {
      let value: Double
      let first: Int
      let last: Int
    }

    var set: Set<Element> = []

    for i in array.indices.dropLast() {
      for j in (i + 1) ..< array.count {
        set.insert(.init(value: Double(array[i]) / Double(array[j]), first: array[i], last: array[j]))
      }
    }

    let element = set.sorted(by: { $0.value < $1.value })[k - 1]

    return [element.first, element.last]
  }
}
