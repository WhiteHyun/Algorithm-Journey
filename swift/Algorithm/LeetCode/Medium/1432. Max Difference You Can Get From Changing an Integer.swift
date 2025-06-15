//
//  1432. Max Difference You Can Get From Changing an Integer.swift
//  https://leetcode.com/problems/max-difference-you-can-get-from-changing-an-integer/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/06/15.
//

final class LeetCode1432 {
  func maxDiff(_ num: Int) -> Int {
    let numberArray = String(num)

    var maxNumber: Int?
    var minNumber: Int?
    for char in numberArray where char != "9" {
      maxNumber = Int(numberArray.replacingOccurrences(of: String(char), with: "9"))
      break
    }

    for char in numberArray where char != "1" && char != "0" {
      minNumber = Int(numberArray.replacingOccurrences(of: String(char), with: numberArray.first == char ? "1" : "0"))
      break
    }
    return (maxNumber ?? num) - (minNumber ?? num)
  }
}
