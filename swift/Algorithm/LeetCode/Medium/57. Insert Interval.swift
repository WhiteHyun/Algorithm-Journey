//
//  57. Insert Interval.swift
//  https://leetcode.com/problems/insert-interval/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/06.
//

final class LeetCode57 {
  func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    let intervals = (intervals + [newInterval]).sorted { $0[0] < $1[0] }
    var answers: [[Int]] = []

    var start = intervals[0][0]
    var end = intervals[0][1]
    for interval in intervals.dropFirst() {
      let nextStart = interval[0]
      let nextEnd = interval[1]
      if end >= nextStart {
        end = max(end, nextEnd)
      } else {
        answers.append([start, end])
        start = nextStart
        end = nextEnd
      }
    }

    answers.append([start, end])

    return answers
  }
}
