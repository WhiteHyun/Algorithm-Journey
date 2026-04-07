//
//  3015. Reunite Oasis.swift
//  https://www.acmicpc.net/problem/3015
//  Algorithm
//
//  Created by 홍승현 on 2024/05/07.
//

import Foundation

final class BOJ3015 {
  func countVisiblePeople(_ people: [Int]) -> Int {
    var answer = 0
    var stack: [(Int, Int)] = []
    for person in people {
      while !stack.isEmpty, stack.last!.0 < person {
        answer += stack.removeLast().1
      }

      if let last = stack.last, last.0 == person {
        answer += stack.removeLast().1
        if !stack.isEmpty {
          answer += 1
        }
        stack.append((person, last.1 + 1))
        continue
      }

      if !stack.isEmpty {
        answer += 1
      }

      stack.append((person, 1))
    }
    return answer
  }
}
