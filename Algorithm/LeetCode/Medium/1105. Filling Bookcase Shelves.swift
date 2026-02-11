//
//  1105. Filling Bookcase Shelves.swift
//  https://leetcode.com/problems/filling-bookcase-shelves/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/31.
//

final class LeetCode1105 {
  func minHeightShelves(_ books: [[Int]], _ shelfWidth: Int) -> Int {
    // 캐시를 사용하여 중복 계산을 방지합니다.
    // 키: 책의 위치, 값: 해당 위치에서 시작했을 때의 최소 높이
    var cache: [Int: Int] = [:]

    /// 재귀 함수: 주어진 위치에서 시작하여 모든 책을 배치했을 때의 최소 높이를 반환합니다.
    func recursion(_ position: Int) -> Int {
      // 책이 남아있지 않는 경우
      if position == books.count {
        return 0
      }

      if let cachedData = cache[position] {
        return cachedData
      }

      var currentWidth = shelfWidth // 현재 선반의 남은 너비
      var maxHeight = 0 // 현재 선반에 놓인 책들 중 최대 높이
      cache[position] = Int.max // 초기값을 최대로 설정

      for index in position ..< books.count {
        let bookWidth = books[index][0]
        let bookHeight = books[index][1]
        if currentWidth < bookWidth {
          break
        }
        currentWidth -= bookWidth
        if maxHeight < bookHeight {
          maxHeight = bookHeight
        }

        cache[position] = min(cache[position]!, recursion(index + 1) + maxHeight)
      }

      return cache[position]!
    }

    return recursion(0)
  }
}
