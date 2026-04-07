//
//  16953. A → B.swift
//  https://www.acmicpc.net/problem/16953
//  Algorithm
//
//  Created by 홍승현 on 2024/05/12.
//

import Foundation

final class BOJ16953 {
  func solution(_ start: Int, _ destination: Int) -> Int {
    var visited: [Int: Bool] = [:]

    var queue: [(number: Int, count: Int)] = []
    queue.append((start, 1))
    visited[start] = true

    while !queue.isEmpty {
      let (originalNumber, count) = queue.removeFirst()
      if originalNumber == destination { return count }
      let doubledNumber = originalNumber * 2
      if !visited[doubledNumber, default: false], doubledNumber <= destination {
        visited[doubledNumber] = true
        queue.append((doubledNumber, count + 1))
      }
      let numberSuffixedByOne = originalNumber * 10 + 1
      if !visited[numberSuffixedByOne, default: false], numberSuffixedByOne <= destination {
        visited[numberSuffixedByOne] = true
        queue.append((numberSuffixedByOne, count + 1))
      }
    }

    return -1
  }
}
