//
//  3163. String Compression III.swift
//  https://leetcode.com/problems/string-compression-iii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/04.
//

final class LeetCode3163 {
  func compressedString(_ word: String) -> String {
    let array = Array(word)

    var comp = ""
    var number = 0

    for index in array.indices {
      if number != 0, array[index - 1] != array[index] {
        comp += "\(number)\(array[index - 1])"
        number = 1
      } else {
        number += 1
        if number == 10 {
          comp += "9\(array[index])"
          number = 1
        }
      }
    }

    return comp + "\(number)\(array.last!)"
  }
}
