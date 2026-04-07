//
//  731. My Calendar II.swift
//  https://leetcode.com/problems/my-calendar-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/27.
//

enum LeetCode731 {
  final class MyCalendarTwo {
    var events: [(start: Int, end: Int)] = []
    var overlaps: [(start: Int, end: Int)] = []
    func book(_ start: Int, _ end: Int) -> Bool {
      for (s, e) in overlaps where start < e && end > s {
        return false
      }

      for (s, e) in events {
        if start < e, end > s {
          overlaps.append((max(s, start), min(e, end)))
        }
      }

      events.append((start, end))

      return true
    }
  }
}
