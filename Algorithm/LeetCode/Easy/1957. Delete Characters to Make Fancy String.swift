//
//  1957. Delete Characters to Make Fancy String.swift
//  https://leetcode.com/problems/delete-characters-to-make-fancy-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/01.
//

final class LeetCode1957 {
  func makeFancyString(_ s: String) -> String {
    var result = String(s.first!)
    result.reserveCapacity(s.count)

    var flag = false
    for element in s.dropFirst() {
      if result.last != element {
        result.append(element)
        flag = false
      } else if flag == false {
        result.append(element)
        flag = true
      }
    }

    return result
  }
}
