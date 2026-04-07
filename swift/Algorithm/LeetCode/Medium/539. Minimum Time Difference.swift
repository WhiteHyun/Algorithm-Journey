//
//  539. Minimum Time Difference.swift
//  https://leetcode.com/problems/minimum-time-difference/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/16.
//

final class LeetCode539 {
  func findMinDifference(_ timePoints: [String]) -> Int {
    var sortedTime: [Int] = []

    for timePoint in timePoints {
      sortedTime.append(Int(timePoint.prefix(2))! * 60 + Int(timePoint.suffix(2))!)
    }

    sortedTime.sort()

    var timeGap: Int = .max

    for index in sortedTime.indices.dropLast() {
      timeGap = min(timeGap, sortedTime[index + 1] - sortedTime[index])
    }

    timeGap = min(timeGap, sortedTime[0] + 1440 - sortedTime.last!)

    return timeGap
  }
}
