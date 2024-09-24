//
//  2418. Sort the People.swift
//  https://leetcode.com/problems/sort-the-people/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/23.
//

final class LeetCode2418 {
  func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    zip(names, heights)
      .sorted { $0.1 > $1.1 }
      .map(\.0)
  }
}
