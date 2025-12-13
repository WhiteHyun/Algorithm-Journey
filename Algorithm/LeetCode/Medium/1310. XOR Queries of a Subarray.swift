//
//  1310. XOR Queries of a Subarray.swift
//  https://leetcode.com/problems/xor-queries-of-a-subarray/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/13.
//

final class LeetCode1310 {
  func xorQueries(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var prefixSum: [Int] = []
    for element in arr {
      prefixSum.append((prefixSum.last ?? 0) ^ element)
    }

    var result: [Int] = []

    for query in queries {
      if query[0] == 0 {
        result.append(prefixSum[query[1]])
        continue
      }

      result.append(prefixSum[query[1]] ^ prefixSum[query[0] - 1])
    }

    return result
  }
}
