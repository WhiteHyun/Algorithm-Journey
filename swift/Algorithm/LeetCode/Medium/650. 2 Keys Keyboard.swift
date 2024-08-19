//
//  650. 2 Keys Keyboard.swift
//  https://leetcode.com/problems/2-keys-keyboard/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/19.
//

import Foundation

final class LeetCode650 {
  func minSteps(_ n: Int) -> Int {
    if n == 1 { return 0 }
    if n < 6 { return n }

    var array = Array(0 ... n)

    for i in 2 ... n >> 1 {
      var triedCount = array[i] + 1
      for j in stride(from: i * 2, through: n, by: i) {
        if array[j] > triedCount + 1 {
          array[j] = triedCount + 1
        }

        triedCount += 1
      }
    }

    return array[n]
  }
}
