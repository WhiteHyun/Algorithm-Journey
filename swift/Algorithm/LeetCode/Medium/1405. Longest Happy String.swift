//
//  1405. Longest Happy String.swift
//  https://leetcode.com/problems/longest-happy-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/16.
//

final class LeetCode1405 {
  func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
    var answer: [String] = []

    var sorted = ["a": a, "b": b, "c": c].sorted { $0.value > $1.value }

    while sorted[2].value != 0 {
      for index in sorted.indices {
        answer.append(sorted[index].key)
        sorted[index].value -= 1
      }
    }

    while sorted[1].value != 0 {
      for index in 0 ..< 2 {
        answer.append(sorted[index].key)
        sorted[index].value -= 1
      }
    }

    var string = ""
    string.reserveCapacity(a + b + c)

    if sorted[0].value == 0 { return answer.joined() }

    for index in answer.indices {
      string += answer[index]
      if answer[index] == sorted[0].key {
        string += sorted[0].key
        sorted[0].value -= 1
      } else if index + 1 < answer.count, answer[index + 1] == sorted[0].key {
        continue
      } else if sorted[0].value >= 2 {
        string += sorted[0].key
        string += sorted[0].key
        sorted[0].value -= 2
      } else {
        string += sorted[0].key
        sorted[0].value -= 1
      }

      if sorted[0].value == 0 {
        string += answer[(index + 1)...].joined()
        break
      }
    }

    return string.isEmpty ? String(repeating: sorted[0].key, count: min(2, sorted[0].value)) : string
  }
}
