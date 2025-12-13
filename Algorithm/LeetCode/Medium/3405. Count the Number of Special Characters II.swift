//
//  3405. Count the Number of Special Characters II
//  https://leetcode.com/problems/count-the-number-of-special-characters-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/21.
//

import Foundation

final class LeetCode3405 {
  func numberOfSpecialChars(_ word: String) -> Int {
    var dictionary: [Character: Int] = [:]
    for (index, element) in word.enumerated() where element.isLowercase || dictionary[element] == nil {
      dictionary[element] = index
    }

    var count = 0

    for char in Character("a").asciiValue! ... Character("z").asciiValue! {
      if let lowercaseIndex = dictionary[Character(UnicodeScalar(char))],
         let uppercaseIndex = dictionary[Character(UnicodeScalar(char - 32))] {
        if lowercaseIndex < uppercaseIndex {
          count += 1
        }
      }
    }

    return count
  }
}
