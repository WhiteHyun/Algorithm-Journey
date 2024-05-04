//
//  881. Boats to Save People.swift
//  https://leetcode.com/problems/boats-to-save-people/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/04.
//

import Foundation

final class LeetCode881 {
  func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    let sortedPeople = people.sorted()
    var answer = 0
    var left = 0
    var right = sortedPeople.endIndex - 1

    while left <= right {
      if sortedPeople[left] + sortedPeople[right] <= limit {
        left += 1
        right -= 1
        answer += 1
        continue
      }
      answer += 1
      right -= 1
    }

    return answer
  }
}
