//
//  670. Maximum Swap.swift
//  https://leetcode.com/problems/maximum-swap/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/17.
//

final class LeetCode670 {
  func maximumSwap(_ num: Int) -> Int {
    var intArray = Array(String(num)).compactMap { Int(String($0)) }
    let sortedArray = intArray.enumerated().sorted {
      if $0.element == $1.element {
        return $0.offset > $1.offset
      }
      return $0.element > $1.element
    }

    for i in sortedArray.indices where sortedArray[i].element != intArray[i] {
      var offset = i
      while offset >= 0, sortedArray[offset].element == sortedArray[i].element {
        offset -= 1
      }

      if offset != i {
        intArray[sortedArray[offset + 1].offset] = intArray[i]
      } else {
        intArray[sortedArray[i].offset] = intArray[i]
      }

      intArray[i] = sortedArray[i].element
      break
    }

    return Int(intArray.map(String.init).joined())!
  }
}
