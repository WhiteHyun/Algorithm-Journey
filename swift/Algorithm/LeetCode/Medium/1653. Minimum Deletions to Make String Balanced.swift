//
//  1653. Minimum Deletions to Make String Balanced.swift
//  https://leetcode.com/problems/minimum-deletions-to-make-string-balanced/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/31.
//

final class LeetCode1653 {
  func minimumDeletions(_ s: String) -> Int {
    let array = Array(s)

    var result = array.count
    var aCountRight = array.count(where: { $0 == "a" })
    var bCountLeft = 0

    for element in array {
      if element == "a" {
        aCountRight -= 1
      }
      let deletions = bCountLeft + aCountRight
      if deletions < result {
        result = deletions
      }
      if element == "b" {
        bCountLeft += 1
      }
    }

    return result
  }
}
