//
//  514. Freedom Trail.swift
//  https://leetcode.com/problems/freedom-trail/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/27.
//

import Foundation

final class LeetCode514 {
  func findRotateSteps(_ ring: String, _ key: String) -> Int {
    recursionVersion(ring, key)
//    dpVersion(ring, key)
  }

  private func recursionVersion(_ ring: String, _ key: String) -> Int {
    let ringArray = Array(ring)
    let keyArray = Array(key)
    var cache: [[Int]: Int] = [:]

    func recursive(_ ringIndex: Int, _ keyIndex: Int) -> Int {
      if keyIndex == keyArray.count {
        return 0
      }

      if let value = cache[[ringIndex, keyIndex]] { return value }

      var result = Int.max

      for (index, character) in ringArray.enumerated() where character == keyArray[keyIndex] {
        let min_distance = min(abs(ringIndex - index), ringArray.count - abs(ringIndex - index))
        result = min(result, min_distance + 1 + recursive(index, keyIndex + 1))
      }
      cache[[ringIndex, keyIndex]] = result
      return result
    }

    return recursive(0, 0)
  }

  private func dpVersion(_ ring: String, _ key: String) -> Int {
    var dp: [Int] = .init(repeating: 0, count: ring.count)
    let ringArray = Array(ring)
    let keyArray = Array(key)

    for k in keyArray.indices.reversed() {
      var nextDP: [Int] = .init(repeating: .max, count: ring.count)
      for r in ringArray.indices {
        for (index, character) in ringArray.enumerated() where character == keyArray[k] {
          let min_distance = min(abs(r - index), ringArray.count - abs(r - index))
          nextDP[r] = min(nextDP[r], min_distance + 1 + dp[index])
        }
      }
      dp = nextDP
    }

    return dp[0]
  }
}
