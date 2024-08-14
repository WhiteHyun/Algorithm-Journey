//
//  719. Find K-th Smallest Pair Distance.swift
//  https://leetcode.com/problems/find-k-th-smallest-pair-distance/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/14.
//

final class LeetCode719 {
  func smallestDistancePair(_ nums: [Int], _ k: Int) -> Int {
    var array: [Int] = []

    let counter = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
    let sortedKey = counter.keys.sorted()

    for i in sortedKey.indices {
      let firstCount = counter[sortedKey[i]]!
      array.append(
        contentsOf: Array(
          repeating: 0,
          count: (firstCount * (firstCount - 1)) >> 1
        )
      )
      for j in (i + 1) ..< sortedKey.count {
        let nextCount = counter[sortedKey[j]]!
        array.append(
          contentsOf: Array(
            repeating: sortedKey[j] - sortedKey[i],
            count: firstCount * nextCount
          )
        )
      }
    }

    return array.sorted()[k - 1]
  }
}
