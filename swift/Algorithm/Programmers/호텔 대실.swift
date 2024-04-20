//
//  호텔 대실
//  https://school.programmers.co.kr/learn/courses/30/lessons/155651
//
//  Created by whitehyun on 2023/02/14.
//

import Foundation

// MARK: - ProgrammersSolution155651

final class ProgrammersSolution155651 {
  private var queue = [DateTime]()

  func solution(_ bookTime: [[String]]) -> Int {
    // DateTime 타입으로 전부 변환 -> 시간 순으로 오름차순 정렬
    let sortedBookingTime = bookTime.map { $0.map { DateTime(dateString: $0) } }
      .sorted { lhs, rhs in
        if lhs[0] != rhs[0] { return lhs[0] < rhs[0] }
        return lhs[1] < rhs[1]
      }

    // 청소 시간 10분을 덧셈 -> 그래야 방을 대실할 수 있음
    queue.append(sortedBookingTime[0][1] + .minutes(10))

    // 첫 번째는 큐에 넣었으므로 다음 것부터
    for time in sortedBookingTime[1...] {
      let startTime = time[0] // 시작 시간
      let endTime = time[1] // 끝나는 시간

      // 큐에 청소가 끝난 방이 있는지 확인
      let cleanedRooms = queue.enumerated().filter { _, cleaningDeadline in
        cleaningDeadline <= startTime
      }

      // 없으면 큐에 방을 하나 더 추가하여 대실
      if cleanedRooms.isEmpty {
        queue.append(endTime + .minutes(10))
      } else {
        queue[cleanedRooms[0].offset] = endTime + .minutes(10)
      }
    }

    // 최종 운영하는 방
    return queue.count
  }
}

// MARK: ProgrammersSolution155651.DateTime

extension ProgrammersSolution155651 {
  private struct DateTime: Comparable, CustomStringConvertible {
    static func < (lhs: DateTime, rhs: DateTime) -> Bool {
      if lhs.hour != rhs.hour {
        return lhs.hour < rhs.hour
      }
      if lhs.minute != rhs.minute {
        return lhs.minute < rhs.minute
      }
      return false
    }

    static func + (lhs: DateTime, rhs: DateTime) -> DateTime {
      let minutes = lhs.minute + rhs.minute
      return DateTime(hour: lhs.hour + rhs.hour + minutes / 60, minute: minutes % 60)
    }

    var description: String {
      String(format: "%02d", hour) + ":" + String(format: "%02d", minute)
    }

    static func minutes(_ value: Int) -> DateTime {
      DateTime(hour: value / 60, minute: value % 60)
    }

    // MARK: - Properties

    let hour: Int
    let minute: Int

    init(hour: Int, minute: Int) {
      self.hour = hour
      self.minute = minute
    }

    init(dateString: String) {
      let seperatedValues = dateString.components(separatedBy: ":")
      self.init(hour: Int(seperatedValues[0])!, minute: Int(seperatedValues[1])!)
    }
  }
}
