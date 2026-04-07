//
//  1122. Relative Sort Array.swift
//  https://leetcode.com/problems/relative-sort-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/11.
//

final class LeetCode1122 {
  func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    arr1.sorted { lhs, rhs in
      let lhsIndex = arr2.firstIndex(of: lhs)
      let rhsIndex = arr2.firstIndex(of: rhs)

      if lhsIndex == nil, rhsIndex == nil { return lhs < rhs }
      return lhsIndex ?? .max < rhsIndex ?? .max
    }
  }
}
