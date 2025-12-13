//
//  729. My Calendar I.swift
//  https://leetcode.com/problems/my-calendar-i/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/26.
//

enum LeetCode729 {
  final class MyCalendar {
    private var events: [(start: Int, end: Int)] = []

    func book(_ start: Int, _ end: Int) -> Bool {
      guard !events.isEmpty else {
        events = [(start, end)]
        return true
      }

      var left = 0
      var right = events.count - 1

      while left <= right {
        let mid = (left + right) / 2
        if events[mid].start < end {
          left = mid + 1
        } else {
          right = mid - 1
        }
      }

      guard left == 0 || start >= events[left - 1].end else { return false }
      guard left == events.count || end <= events[left].start else { return false }

      events.insert((start, end), at: left)
      return true
    }
  }
}
