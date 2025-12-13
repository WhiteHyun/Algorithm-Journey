//
//  1010. Laying bridges.swift
//  https://www.acmicpc.net/problem/1010
//  Algorithm
//
//  Created by 홍승현 on 2024/05/10.
//

import Foundation

final class BOJ1010 {
  func solution(_ r: Int, _ n: Int) -> Int {
    guard r != n else { return 1 }
    let r = n - r < r ? n - r : r

    var numerator = 1
    var denominator = 1

    for value in (n - r + 1) ... n {
      numerator *= value
    }

    for value in 1 ... r {
      denominator *= value
    }

    return numerator / denominator
  }
}
