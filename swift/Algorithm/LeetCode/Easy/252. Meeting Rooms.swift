//
//  252. Meeting Rooms.swift
//  https://leetcode.com/problems/meeting-rooms/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/12.
//

import Foundation

// MARK: - LeetCode252

final class LeetCode252 {
  func canAttendMeetings(_ intervals: [Interval]) -> Bool {
    let sortedIntervals = intervals.sorted { lhs, rhs in
      lhs.start < rhs.start
    }

    for i in sortedIntervals.indices.dropFirst() where sortedIntervals[i - 1].end > sortedIntervals[i].start {
      return false
    }

    return true
  }
}
