//
//  624. Maximum Distance in Arrays.swift
//  https://leetcode.com/problems/maximum-distance-in-arrays/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/16.
//

final class LeetCode624 {
  func maxDistance(_ arrays: [[Int]]) -> Int {
    let minMaxArray = arrays.map { (min: $0.first!, max: $0.last!) }

    var minimumIndex = 0
    var maximumIndex = 0

    for index in minMaxArray.indices {
      if minMaxArray[index].min < minMaxArray[minimumIndex].min {
        minimumIndex = index
      }
      if minMaxArray[index].max > minMaxArray[maximumIndex].max {
        maximumIndex = index
      }
    }

    if minimumIndex != maximumIndex {
      return minMaxArray[maximumIndex].max - minMaxArray[minimumIndex].min
    }

    var nextMinIndex = minimumIndex == 0 ? 1 : 0
    var nextMaxIndex = minimumIndex == 0 ? 1 : 0

    for index in minMaxArray.indices where index != minimumIndex {
      if minMaxArray[index].min < minMaxArray[nextMinIndex].min {
        nextMinIndex = index
      }
      if minMaxArray[index].max > minMaxArray[nextMaxIndex].max {
        nextMaxIndex = index
      }
    }

    return max(
      minMaxArray[nextMaxIndex].max - minMaxArray[minimumIndex].min,
      minMaxArray[maximumIndex].max - minMaxArray[nextMinIndex].min,
    )
  }
}
