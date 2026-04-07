//
//  756. Pyramid Transition Matrix.swift
//  https://leetcode.com/problems/pyramid-transition-matrix/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/29.
//

final class LeetCode756 {
  func pyramidTransition(_ bottom: String, _ allowed: [String]) -> Bool {
    // 1. 전처리: "AB" -> ["C", "D", ...] 형태의 딕셔너리
    var mapping: [String: [Character]] = [:]
    for pattern in allowed {
      let key = String(pattern.prefix(2))
      let value = pattern.last!
      mapping[key, default: []].append(value)
    }

    func buildNextLayer(_ current: [Character], _ index: Int, _ next: [Character]) -> Bool {
      // 다음 레이어가 완성됨
      if index == current.count - 1 {
        // 꼭대기 도달
        if next.count == 1 {
          return true
        }

        // 다음 레이어로 재귀
        return buildNextLayer(next, 0, [])
      }

      // 현재 인접 쌍
      let key = String([current[index], current[index + 1]])

      // 가능한 상위 블록이 없으면 실패
      guard let candidates = mapping[key] else {
        return false
      }

      // 각 후보에 대해 시도
      for candidate in candidates where buildNextLayer(current, index + 1, next + [candidate]) {
        return true
      }

      return false
    }

    return buildNextLayer(Array(bottom), 0, [])
  }
}
