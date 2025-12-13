//
//  2022. Convert 1D Array Into 2D Array.swift
//  https://leetcode.com/problems/convert-1d-array-into-2d-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/01.
//

final class LeetCode2022 {
  func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
    guard original.count == m * n else { return [] }
    var array: [[Int]] = .init(repeating: .init(repeating: 0, count: n), count: m)

    var i = 0
    var j = 0
    for index in original.indices {
      if !(0 ..< n ~= j) { i += 1; j = 0 }
      array[i][j] = original[index]
      j += 1
    }
    return array
  }
}
