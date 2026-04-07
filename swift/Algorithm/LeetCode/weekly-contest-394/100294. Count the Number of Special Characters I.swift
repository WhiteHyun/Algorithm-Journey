//
//  100294. Count the Number of Special Characters I.swift
//  https://leetcode.com/contest/weekly-contest-394/problems/count-the-number-of-special-characters-i/
//  Algorithm
//
//  Created by 홍승현 on 4/21/24.
//

import Foundation

final class LeetCode100294 {
  func numberOfSpecialChars(_ word: String) -> Int {
    let uppercaseSet = Set(word.filter(\.isUppercase))
    let lowercaseSet = Set(word.filter(\.isLowercase))

    let specialCharsSet = uppercaseSet.intersection(lowercaseSet.map { Character(String($0).uppercased()) })

    return specialCharsSet.count
  }
}
