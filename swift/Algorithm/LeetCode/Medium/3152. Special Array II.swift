//
//  3152. Special Array II.swift
//  https://leetcode.com/problems/special-array-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/19.
//

import Foundation

final class LeetCode3152 {
  // MARK: - Runtime: 661 ms / Memory 32.44 MB

  func isArraySpecial(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
    var answer: [Bool] = []
    var converted = [0]
    var sameParityCount = 0
    for i in 1 ..< nums.count {
      // Add 1 for j if it is same parity.
      if (nums[i] ^ nums[i - 1]) & 1 == 0 {
        sameParityCount += 1
      }
      converted.append(sameParityCount)
    }

    for query in queries {
      answer.append(converted[query[0]] == converted[query[1]])
    }
    return answer
  }

  // MARK: - Time Limit Exceeded (dp로 풀면 Memory Limit Exceeded, 그냥 풀면 Time Limit Exceeded가 남)

  func isArraySpecialTimeLimitExceeded(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
    var array: [Bool] = []
    var result: [Bool] = []
    for i in 1 ..< nums.count {
      array.append((nums[i - 1] ^ nums[i]) & 1 == 1)
    }

    for query in queries {
      if query[0] == query[1] { result.append(true) }
      else { result.append(array[query[0] ..< query[1]].allSatisfy(\.self)) }
    }

    return result
  }
}
