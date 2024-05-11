//
//  2110. Installing a router.swift
//  https://www.acmicpc.net/problem/2110
//  Algorithm
//
//  Created by 홍승현 on 2024/05/11.
//

import Foundation

final class BOJ2110 {
  func solution(_ houses: [Int], _ count: Int) -> Int {
    let sortedHouses = houses.sorted() // O(n*log_n)
    var low = 1
    var high = sortedHouses.last! - sortedHouses[0]
    var result = 0

    while low <= high {
      let mid = (low + high) >> 1
      if countRouters(sortedHouses, mid) >= count {
        result = mid
        low = mid + 1
      } else {
        high = mid - 1
      }
    }

    return result
  }

  func countRouters(_ houses: [Int], _ distance: Int) -> Int {
    var count = 1
    var currentHouse = houses[0]
    for house in houses.dropFirst() where house - currentHouse >= distance {
      count += 1
      currentHouse = house
    }
    return count
  }
}
