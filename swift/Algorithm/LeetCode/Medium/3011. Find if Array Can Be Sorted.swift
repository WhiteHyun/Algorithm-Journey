//
//  3011. Find if Array Can Be Sorted.swift
//  https://leetcode.com/problems/find-if-array-can-be-sorted/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/06.
//

final class LeetCode3011 {
  func canSortArray(_ nums: [Int]) -> Bool {
    let sortedNums = nums.sorted()
    if sortedNums == nums { return true }
    var twoDimentionalArray: [[Int]] = []
    for element in nums {
      if twoDimentionalArray.last?.last?.nonzeroBitCount ?? -1
        == element.nonzeroBitCount {
        twoDimentionalArray[twoDimentionalArray.endIndex - 1].append(element)
      } else {
        twoDimentionalArray.append([element])
      }
    }

    return twoDimentionalArray.flatMap { $0.sorted() } == sortedNums
  }
}
