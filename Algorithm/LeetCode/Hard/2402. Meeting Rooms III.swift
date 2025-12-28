//
//  2402. Meeting Rooms III.swift
//  https://leetcode.com/problems/meeting-rooms-iii/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/27.
//

// MARK: - LeetCode2402

final class LeetCode2402 {
  func mostBooked(_ n: Int, _ meetings: [[Int]]) -> Int {
    var meetingCounts = Array(repeating: 0, count: n)

    // Available Heap: 방 번호가 작은 것이 우선
    var availableRooms = Heap<Room> { $0.id < $1.id }

    // Busy Heap: 종료 시간 우선, 같으면 방 번호 우선
    var busyRooms = Heap<Room> { $0.endTime != $1.endTime ? $0.endTime < $1.endTime : $0.id < $1.id }

    for id in 0 ..< n {
      availableRooms.insert(Room(id: id, endTime: 0))
    }

    let sortedMeetings = meetings.sorted { meeting1, meeting2 in
      let (start1, end1) = (meeting1[0], meeting1[1])
      let (start2, end2) = (meeting2[0], meeting2[1])
      return start1 != start2 ? start1 < start2 : end1 < end2
    }

    for meeting in sortedMeetings {
      let (start, end) = (meeting[0], meeting[1])

      // Step 1: busy에서 끝난 방들을 available로 이동
      while let busyRoom = busyRooms.peek,
            busyRoom.endTime <= start {
        availableRooms.insert(busyRooms.remove()!)
      }

      if availableRooms.isEmpty,
         let finishedRoom = busyRooms.remove() {
        availableRooms.insert(finishedRoom)
      }

      // Step 2: 방 선택
      if var availableRoom = availableRooms.remove() {
        if availableRoom.endTime < start {
          availableRoom.endTime = end
        } else {
          availableRoom.endTime = availableRoom.endTime + end - start
        }
        meetingCounts[availableRoom.id] += 1
        // Step 3: 방 사용
        busyRooms.insert(availableRoom)
      }
    }

    if let maxCounts = meetingCounts.max(),
       let index = meetingCounts.firstIndex(of: maxCounts) {
      return index
    } else {
      return 0
    }
  }
}

private extension LeetCode2402 {
  struct Room {
    let id: Int
    var endTime: Int
  }

  struct Heap<Element: Sendable> {
    private var elements: [Element] = []
    private let priorityFunction: (Element, Element) -> Bool

    init(priorityFunction: @escaping (Element, Element) -> Bool) {
      self.priorityFunction = priorityFunction
    }

    var peek: Element? { elements.first }

    var count: Int { elements.count }

    var isEmpty: Bool { elements.isEmpty }

    mutating func insert(_ element: Element) {
      elements.append(element)
      siftUp(from: elements.endIndex - 1)
    }

    mutating func remove() -> Element? {
      guard !elements.isEmpty else { return nil }
      elements.swapAt(0, elements.endIndex - 1)
      let removeElement = elements.popLast()
      siftDown(from: 0)

      return removeElement
    }

    private mutating func siftUp(from index: Int) {
      guard index > 0 else { return }

      let parent = parentIndex(of: index)
      if priorityFunction(elements[index], elements[parent]) {
        elements.swapAt(parent, index)
        siftUp(from: parent)
      }
    }

    private mutating func siftDown(from index: Int) {
      let left = leftChildIndex(of: index)
      let right = rightChildIndex(of: index)

      var candidate = index

      if left < count, priorityFunction(elements[left], elements[candidate]) {
        candidate = left
      }

      if right < count, priorityFunction(elements[right], elements[candidate]) {
        candidate = right
      }

      if candidate != index {
        elements.swapAt(candidate, index)
        siftDown(from: candidate)
      }
    }

    private func parentIndex(of index: Int) -> Int {
      (index - 1) >> 1
    }

    private func leftChildIndex(of index: Int) -> Int {
      index * 2 + 1
    }

    private func rightChildIndex(of index: Int) -> Int {
      index * 2 + 2
    }
  }
}
