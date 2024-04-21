//
//  3408. Count the Number of Special Characters I
//  https://leetcode.com/problems/count-the-number-of-special-characters-i/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/21.
//

import Foundation

final class LeetCodeSolution3408 {
  func numberOfSpecialChars(_ word: String) -> Int {
    let uppercaseSet = Set(word.filter(\.isUppercase))
    let lowercaseSet = Set(word.filter(\.isLowercase))

    let specialCharsSet = uppercaseSet.intersection(lowercaseSet.map { Character(String($0).uppercased()) })

    return specialCharsSet.count
  }
}
