//
//  648. Replace Words.swift
//  https://leetcode.com/problems/replace-words/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/07.
//

final class LeetCode648 {
  func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
    let lengthSorted = dictionary.sorted { $0.count < $1.count }
    return sentence.components(separatedBy: .whitespaces)
      .map {
        for value in lengthSorted where $0.hasPrefix(value) {
          return value
        }
        return $0
      }
      .joined(separator: " ")
  }
}
