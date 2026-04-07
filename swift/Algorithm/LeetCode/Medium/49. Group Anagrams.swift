//
//  49. Group Anagrams.swift
//  https://leetcode.com/problems/group-anagrams/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/20.
//

import Foundation

final class LeetCode49 {
  func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dictionary: [String: [String]] = [:]
    for str in strs {
      dictionary[String(str.sorted()), default: []].append(str)
    }

    return Array(dictionary.values)
  }
}
