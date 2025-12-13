//
//  11054. Longest Sequence of Vitonic Parts.swift
//  https://www.acmicpc.net/problem/11054
//  Algorithm
//
//  Created by 홍승현 on 2024/05/22.
//

import Foundation

// MARK: - BOJ11054

final class BOJ11054 {
  func solution(_ n: Int, _ sequence: [Int]) -> Int {
    let reversedSequence = Array(sequence.reversed())
    var ascendingDP: [Int] = .init(repeating: 1, count: n)
    var descendingDP: [Int] = .init(repeating: 1, count: n)
    for index in 0 ..< (n - 1) {
      for next in (index + 1) ..< n {
        if sequence[index] < sequence[next], ascendingDP[next] < ascendingDP[index] + 1 {
          ascendingDP[next] = ascendingDP[index] + 1
        }
        if reversedSequence[index] < reversedSequence[next], descendingDP[next] < descendingDP[index] + 1 {
          descendingDP[next] = descendingDP[index] + 1
        }
      }
    }
    var maxVitonicParts = 0

    for index in 0 ..< n {
      let sum = ascendingDP[index] + descendingDP[n - index - 1] - 1
      if maxVitonicParts < sum {
        maxVitonicParts = sum
      }
    }

    return maxVitonicParts
  }
}
