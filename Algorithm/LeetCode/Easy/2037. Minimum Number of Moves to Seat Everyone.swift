//
//  2037. Minimum Number of Moves to Seat Everyone.swift
//  https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/13.
//

final class LeetCode2037 {
  func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
    zip(seats.sorted(), students.sorted()).reduce(0) { partialResult, tuple in
      partialResult + abs(tuple.0 - tuple.1)
    }
  }
}
