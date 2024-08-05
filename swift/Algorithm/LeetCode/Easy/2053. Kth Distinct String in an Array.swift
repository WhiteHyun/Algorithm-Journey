//
//  2053. Kth Distinct String in an Array.swift
//  https://leetcode.com/problems/kth-distinct-string-in-an-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/05.
//

final class LeetCode2053 {
  func kthDistinct(_ arr: [String], _ k: Int) -> String {
    let counter = Dictionary(arr.map { ($0, 1) }, uniquingKeysWith: +)

    var index = 1
    for element in arr where counter[element] == 1 {
      if index == k { return element }
      index += 1
    }
    return ""
  }
}
