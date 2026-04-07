//
//  165. Compare Version Numbers.swift
//  https://leetcode.com/problems/compare-version-numbers/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/03.
//

import Foundation

final class LeetCode165 {
  func compareVersion(_ version1: String, _ version2: String) -> Int {
    var version1Array = version1.split(separator: ".").compactMap { Int($0) }
    var version2Array = version2.split(separator: ".").compactMap { Int($0) }

    for _ in stride(from: 0, to: version1Array.count - version2Array.count, by: 1) {
      version2Array.append(0)
    }

    for _ in stride(from: 0, to: version2Array.count - version1Array.count, by: 1) {
      version1Array.append(0)
    }

    for (x, y) in zip(version1Array, version2Array) {
      if x < y { return -1 }
      else if x > y { return 1 }
    }

    return 0
  }
}
