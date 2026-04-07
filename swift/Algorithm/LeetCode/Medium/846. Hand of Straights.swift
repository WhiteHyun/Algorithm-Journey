//
//  846. Hand of Straights.swift
//  https://leetcode.com/problems/hand-of-straights/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/06.
//

final class LeetCode846 {
  func isNStraightHand(_ hand: [Int], _ groupSize: Int) -> Bool {
    var counter = Dictionary(hand.map { ($0, 1) }, uniquingKeysWith: +)

    for key in counter.keys.sorted() where counter[key]! > 0 {
      while counter[key]! > 0 {
        for next in key ..< key + groupSize {
          counter[next, default: 0] -= 1
          if counter[next]! < 0 { return false }
        }
      }
    }

    return true
  }
}
