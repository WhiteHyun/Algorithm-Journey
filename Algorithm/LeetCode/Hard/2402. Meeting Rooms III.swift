//
//  2402. Meeting Rooms III.swift
//  https://leetcode.com/problems/meeting-rooms-iii/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/27.
//

final class LeetCode2402 {
  func mostBooked(_ n: Int, _ meetings: [[Int]]) -> Int {
    var roomsCount = Array(repeating: 0, count: n)
    var roomsEndTime = Array(repeating: 0, count: n)
    let sortedMeetings = meetings.sorted { lhs, rhs in
      if lhs[0] == rhs[0] {
        lhs[1] < rhs[1]
      } else {
        lhs[0] < rhs[0]
      }
    }

    for meeting in sortedMeetings {
      let roomIndex = roomsEndTime.firstIndex(where: { $0 <= meeting[0] }) ?? roomsEndTime.firstIndex(of: roomsEndTime.min()!)
      if let roomIndex {
        roomsCount[roomIndex] += 1
        if roomsEndTime[roomIndex] < meeting[0] {
          roomsEndTime[roomIndex] = meeting[1]
        } else {
          roomsEndTime[roomIndex] = roomsEndTime[roomIndex] + meeting[1] - meeting[0]
        }
      }
    }

    return roomsCount.enumerated()
      .sorted {
        if $0.element == $1.element {
          return $0.offset < $1.offset
        }
        return $0.element > $1.element
      }
      .first!.offset
  }
}
