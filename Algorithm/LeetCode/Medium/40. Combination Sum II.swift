//
//  40. Combination Sum II.swift
//  https://leetcode.com/problems/combination-sum-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/13.
//

final class LeetCode40 {
  func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var set: Set<[Int]> = []

    let candidates = candidates.sorted()
    var tempArray: [Int] = []
    func backTracking(_ index: Int, _ sum: Int) {
      if target < sum {
        return
      }

      if target == sum {
        set.insert(tempArray.sorted())
        return
      }

      guard candidates.indices ~= index
      else {
        return
      }

      tempArray.append(candidates[index])
      backTracking(index + 1, sum + candidates[index])
      tempArray.removeLast()

      var i = index
      while i + 1 < candidates.count, candidates[i] == candidates[i + 1] {
        i += 1
      }

      backTracking(i + 1, sum)
    }

    backTracking(0, 0)

    return Array(set)
  }
}
