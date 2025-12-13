//
//  1717. Representation of Sets.swift
//  https://www.acmicpc.net/problem/1717
//  Algorithm
//
//  Created by 홍승현 on 2024/05/23.
//

import Foundation

final class BOJ1717 {
  func solution(_ n: Int, _ commands: [(Int, Int, Int)]) -> [String] {
    var results: [String] = []
    var trackingArray: [Int] = .init(0 ... n)

    func findParent(_ number: Int) -> Int {
      let parent = trackingArray[number]
      trackingArray[number] = trackingArray[parent]
      return parent == number ? parent : findParent(parent)
    }

    func union(_ number: Int, _ anotherNumber: Int) {
      let parentOfNumber = findParent(number)
      let parentOfAnotherNumber = findParent(anotherNumber)
      if parentOfNumber < parentOfAnotherNumber {
        trackingArray[parentOfAnotherNumber] = parentOfNumber
      } else {
        trackingArray[parentOfNumber] = parentOfAnotherNumber
      }
    }

    for (command, number, anotherNumber) in commands {
      if command == 0 {
        union(number, anotherNumber)
        continue
      }
      results.append(findParent(number) == findParent(anotherNumber) ? "yes" : "no")
    }

    return results
  }
}
