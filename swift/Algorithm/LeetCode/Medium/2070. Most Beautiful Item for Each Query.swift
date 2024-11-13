//
//  2070. Most Beautiful Item for Each Query.swift
//  https://leetcode.com/problems/most-beautiful-item-for-each-query/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/13.
//

final class LeetCode2070 {
  func maximumBeauty(_ items: [[Int]], _ queries: [Int]) -> [Int] {
    let sortedItems = items.sorted {
      // 가격 오름차순, 같으면 beauty 내림차순으로 정렬
      if $0[0] == $1[0] { return $0[1] > $1[1] }
      return $0[0] < $1[0]
    }

    var maxBeauty = 0
    var proceedItems: [(price: Int, beauty: Int)] = []

    for item in sortedItems {
      maxBeauty = max(maxBeauty, item[1])
      proceedItems.append((item[0], maxBeauty))
    }

    // 이진탐색 수행
    return queries.map { price in
      var left = 0
      var right = proceedItems.count - 1

      while left <= right {
        let mid = (left + right) >> 1
        if proceedItems[mid].price > price {
          right = mid - 1
        } else {
          left = mid + 1
        }
      }

      return right >= 0 ? proceedItems[right].beauty : 0
    }
  }
}
