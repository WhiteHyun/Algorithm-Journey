//
//  2028. Find Missing Observations.swift
//  https://leetcode.com/problems/find-missing-observations/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/05.
//

final class LeetCode2028 {
  func missingRolls(_ rolls: [Int], _ mean: Int, _ n: Int) -> [Int] {
    let sum = rolls.reduce(0, +)
    var result = mean * (rolls.count + n) - sum
    var array: [Int] = .init(repeating: 0, count: n)
    if result < 0 || 6 * n < result || array.count > result { return [] }

    for i in array.indices {
      for dice in stride(from: 6, to: 0, by: -1) where Double(result) / Double(dice) >= Double(array.count - i) {
        array[i] = dice
        result -= dice
        break
      }
    }

    return array
  }
}
