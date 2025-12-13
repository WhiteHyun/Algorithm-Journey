//
//  14003. Longest increasing partial sequence 5.swift
//  https://www.acmicpc.net/problem/14003
//  Algorithm
//
//  Created by 홍승현 on 2024/05/31.
//

import Foundation

// MARK: - BOJ14003

final class BOJ14003 {
  func solution(_ n: Int, _ array: [Int]) -> (length: Int, sequence: [Int]) {
    // 증가 부분수열을 저장하는 배열
    var lis: [Int] = []

    // 각 위치에서 최장 증가 부분 수열의 끝에 있는 요소의 원래 배열 인덱스를 저장하는 배열
    var positions: [Int] = .init(repeating: 0, count: n)

    // 각 요소가 이전 요소를 가리키는 인덱스를 저장하여 나중에 LIS를 재구성할 수 있게 하는 배열
    var predecessors: [Int] = .init(repeating: -1, count: n)

    for i in 0 ..< n {
      let num = array[i]
      let index = binarySearch(lis, num)
      if index < lis.count {
        lis[index] = num
      } else {
        lis.append(num)
      }
      positions[index] = i
      if index > 0 {
        predecessors[i] = positions[index - 1]
      }
    }

    var sequence: [Int] = []
    var current = positions[lis.count - 1]
    while current != -1 {
      sequence.append(array[current])
      current = predecessors[current]
    }

    return (lis.count, sequence.reversed())
  }

  private func binarySearch(_ lis: [Int], _ target: Int) -> Int {
    var left = 0
    var right = lis.count - 1
    while left <= right {
      let mid = (left + right) >> 1
      if lis[mid] < target {
        left = mid + 1
      } else {
        right = mid - 1
      }
    }
    return left
  }
}
