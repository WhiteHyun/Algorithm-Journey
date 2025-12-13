//
//  1492. The kth Factor of n.swift
//  https://leetcode.com/problems/the-kth-factor-of-n/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/28.
//

final class LeetCode1492 {
  func kthFactor(_ n: Int, _ k: Int) -> Int {
    var count = 1
    var number = 2
    while count != k {
      if n % number == 0 { count += 1 }
      if number > n { return -1 }
      number += 1
    }

    return number - 1
  }
}
