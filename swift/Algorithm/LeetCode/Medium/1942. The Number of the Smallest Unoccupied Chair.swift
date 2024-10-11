//
//  1942. The Number of the Smallest Unoccupied Chair.swift
//  https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/12.
//

final class LeetCode1942 {
  func smallestChair(_ times: [[Int]], _ targetFriend: Int) -> Int {
    let sortedTimes = times.enumerated().sorted { lhs, rhs in
      if lhs.element[0] == rhs.element[0] {
        return lhs.element[1] < rhs.element[1]
      }
      return lhs.element[0] < rhs.element[0]
    }

    var unOccupied: Set<Int> = []
    var chairs: [Int] = []

    for (offset, element) in sortedTimes {
      let startTime = element[0]

      for index in chairs.indices where chairs[index] <= startTime {
        unOccupied.insert(index)
      }

      if unOccupied.isEmpty {
        if offset == targetFriend { return chairs.count }
        chairs.append(element[1])
        continue
      }

      let index = unOccupied.min()!
      unOccupied.remove(index)
      chairs[index] = element[1]
      if offset == targetFriend { return index }
    }

    return -1
  }
}
